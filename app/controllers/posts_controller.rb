class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    render "new"
  end

  def create
    @post = Post.create(post_params)

    if Post.new(title: params[:post][:title], body: params[:post][:body]).valid?
      post = Post.new(title: params[:post][:title], body: params[:post][:body])
      post.save
      redirect_to posts_path
    else

    end
  end

  def post_params
    params.require(:post).permit(:title)
    params.require(:post).permit(:body)
 	end
end
