class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where("post_id = ?", params[:id])
  end

  def new
    @post = current_user.posts.build
    render "new"
  end

  def create


    if Post.new(title: params[:post][:title], body: params[:post][:body]).valid?
      post = Post.new(title: params[:post][:title], body: params[:post][:body], user_id: current_user.id)
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
