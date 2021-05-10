class GenresController < ApplicationController
  before_action :parent
  
  def show
    @genre = Genre.find(params[:id])
    @reviews = @genre.reviews.order(created_at: :desc).page(params[:page]).per(10)
    
  end
end

