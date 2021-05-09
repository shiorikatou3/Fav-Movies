class ReviewsController < ApplicationController
  before_action :require_user_logged_in, only: [:new, :create, :edit, :update, :destroy]
  before_action :correct_user, only: [:destroy]
  
  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = current_user.reviews.build
    @genres = Genre.where.not(ancestry: nil)
  end

  def create
    @review = current_user.reviews.build(review_params)
    
    if @review.save
      redirect_to @review
    else
      flash.now[:danger] = "投稿に失敗しました"
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
      flash.now[:danger] = "更新出来ませんでした"
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to user_url
  end
  
  private
  
  def review_params
    params.require(:review).permit(:movietitle, :caption, :content, :date, :cast, :time, :image, :genre_id, :country, :director)
  end
  
  def correct_user
    @reiew = current_user.reviews.find_by(id: params[:id])
    unless @review
      redirect_to user_url
    end
  end
  
  
end
