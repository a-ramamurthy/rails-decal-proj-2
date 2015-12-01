class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = current_user.posts.build
    render "new"
  end

  def create
    @post = current_user.posts.build(post_params)

    if Post.new(title: params[:post][:title], body: params[:post][:body]).valid?
      new_post_id = Post.where("user_id = #{post_params[:user_id]}").last.id
      post = Post.new(title: params[:post][:title], body: params[:post][:body], user_id: new_post_id)
      post.save
      redirect_to posts_path
    else

    end
  end

  def edit

  end

  def delete

  end

  def post_params
    params.require(:post).permit(:title)
    params.require(:post).permit(:body)
 	end
end
