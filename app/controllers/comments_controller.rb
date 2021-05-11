class CommentsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]
  
  
  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.build(comment_params)
    @comment.user = current_user
    
    if @comment.save
      redirect_to @review
    else
      flash.now[:danger] = "コメントに失敗しました"
      render @review
    end
  end

  def destroy
    @comment.destroy
    redirect_to @review
  end
  
  private
  
  def comment_params
    params.permit(:content)
  end
  
  def correct_user
    @comment = current_user.comments.find_by(id: params[:id])
    unless @comment
      redirect_to root_url
    end
  end
  
end