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
      relevant_tag_dict = {}
      Tag.all.each {|tag|  relevant_tag_dict[tag.name] = tag}
      if relevant_tag_dict.key? params[:tag][:name]
        tag = relevant_tag_dict[params[:tag][:name]]
      else
        tag = Tag.create(name: params[:tag][:name], description: params[:tag][:description])
      end
      current_user.tags << tag unless current_user.tags.include? tag
      redirect_to tag
  		end
	end

    def add_existing
    	@tag = Tag.find(params[:id])
    	current_user.tags << @tag
    	redirect_to @tag
  	end

end
