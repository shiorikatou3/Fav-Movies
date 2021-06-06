class ReviewsController < ApplicationController
  before_action :require_user_logged_in, only: [:new, :create, :edit, :update, :destroy]
  before_action :correct_user, only: [:destroy]
  before_action :parent
  
  def show
    @review = Review.find(params[:id])
    @comments = @review.comments
    if logged_in?
      @comment = current_user.comments.build
    end
  end

  def new
    @review = current_user.reviews.build
    @children = Genre.where.not(ancestry: nil)
  end

  def create
    @review = current_user.reviews.build(review_params)
    @children = Genre.where.not(ancestry: nil)
    review_count = Review.where(genre_id: review_params[:genre_id]).where(user_id: current_user.id).count
    if @review.valid?
      if review_count < 3
        flash[:success] = "※このジャンルのレビューは#{review_count + 1}件目です。"
        @review.save
        redirect_to @review
      else
        flash[:danger] = "※このジャンルのレビューは#{review_count}件投稿があります。"
        redirect_to new_review_path
      end
    else
      flash.now[:danger] = "投稿に失敗しました。"
      render :new
    end
  end

  def edit
    @review = current_user.reviews.find(params[:id])
  end

  def update
    @review = current_user.reviews.find(params[:id])
    
    if @review.update(review_params)
      redirect_to @review
    else
      flash.now[:danger] = "更新出来ませんでした。"
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to user_url(@review.user)
  end
  
  private
  
  def review_params
    params.require(:review).permit(:movietitle, :caption, :content, :date, :cast, :time, :image, :genre_id, :country, :director)
  end
  
  def correct_user
    @review = current_user.reviews.find_by(id: params[:id])
    unless @review
      redirect_to root_url
    end
  end
  
  
end
