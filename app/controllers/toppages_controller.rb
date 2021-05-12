class ToppagesController < ApplicationController
  before_action :parent
  
  def index
    if logged_in?
      @review = current_user.reviews.build
      @reviews = current_user.feed_reviews.order(id: :desc).page(params[:page])
    else
      @reviews = Review.limit(6).includes(:liked).sort {|a,b| b.liked.size <=> a.liked.size}
    end
  end
end
