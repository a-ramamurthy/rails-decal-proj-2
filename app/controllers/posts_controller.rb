class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    if params[:query].present?
      @posts = Post.search(params[:query])
    else
      @posts = Post.all
    end
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @comment = Comment.new
    @comments = Comment.where("post_id = ?", params[:id])
  end

  def new
    @post = current_user.posts.build
    render "new"
  end

  def create

    if Post.new(title: params[:post][:title], body: params[:post][:body]).valid?
      raw_tags = params[:post][:tags]
      parsed_tags = raw_tags.split(", ")
      post = Post.new(title: params[:post][:title], body: params[:post][:body], user_id: current_user.id)
      parsed_tags.each do |new_tag_name|
        relevant_tag_dict = {}
        Tag.all.each {|tag|  relevant_tag_dict[tag.name] = tag}
        if relevant_tag_dict.key? new_tag_name
          post.tags << relevant_tag_dict[new_tag_name]
        else
          post.tags << Tag.create([{name: new_tag_name}])
        end
      end
      post.save
      redirect_to posts_path
    else

    end
  end

  def edit
    @post = Post.find(params[:id])
    render "edit"
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
      @post = Post.find(params[:id])
      @post.destroy
      @post.tags.destroy
      redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:title, :body)

 	end
end
