class CommentsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]
  
  
  def create
    @comment = current_user.comments.build(comment_params)
    @comment.user = current_user
    
    if @comment.save
      redirect_to review_url(@comment.review)
    else
      flash[:danger] = "コメントに失敗しました"
      redirect_to review_url(@comment.review)
    end
  end

  def destroy
    @comment.destroy
    redirect_to review_url(@comment.review)
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:content, :review_id)
  end
  
  def correct_user
    @comment = current_user.comments.find_by(id: params[:id])
    unless @comment
      redirect_to root_url
    end
  end
  
end