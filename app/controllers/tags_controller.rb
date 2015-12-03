class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @users = @tag.users
    @posts = @tag.posts
  end

  def add
	@tag = current_user.tags.build
    render "add"
  end

   def create
    if Tag.new(name: params[:tag][:name], description: params[:tag][:name]).valid?
      tag = Tag.create(name: params[:tag][:name], description: params[:tag][:description])
      current_user.tags << tag
      redirect_to tag
  		end
	end

    def add_existing
    	@tag = Tag.find(params[:id])
    	current_user.tags << @tag
    	redirect_to @tag
  	end

end
