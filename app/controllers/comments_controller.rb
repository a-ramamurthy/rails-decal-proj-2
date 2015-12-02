class CommentsController < ApplicationController
  def create
      post = Post.find(params[:id])
      comment =  Comment.new(body: params[:comment][:body], post_id: post.id, user_id: current_user.id)
      comment.save
      redirect_to post_path(post)

  end

  def edit
    @comment = Comment.find(params[:id])
    render "edit"
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    @comment.save
    redirect_to @comment.post
  end

  def delete

  end

  def comment_params
    params.require(:comment).permit(:body, :post_id)
 	end

end
