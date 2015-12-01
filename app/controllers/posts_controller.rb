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
    redirect_to show_path(@post)
  end

  def delete

  end

  def post_params
    params.require(:post).permit(:title)
    params.require(:post).permit(:body)
 	end
end
