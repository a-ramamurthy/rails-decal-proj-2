class CommentsController < ApplicationController
  def create
      post = Post.find(params[:id])
      comment =  Comment.new(body: params[:comment][:body], post_id: post.id, user_id: current_user.id)
      comment.save
      redirect_to posts_path

  end

  def edit
  end

  def delete
  end

  def comment_params
    params.require(:comment).permit(:body, :post_id)
 	end

end
