class PostsController < ApplicationController
  def index 
    @posts = Posts.all
  end
  
  def show
    @post = Posts.find(params[:id])
  end
  
  
end
