class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:edit, :update]
  before_action :parent
  
  
  def index
    @users = User.order(id: :desc).page(params[:page]).per(20)
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews.order(id: :desc).page(params[:page]).per(10)
    counts(@user)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to @user
    else
      flash.now[:danger] = "登録に失敗しました。"
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
      redirect_to @user
    else
      flash.now[:danger] = "更新に失敗しました。"
      render :edit
    end
  end
  
  def followings
    @user = User.find(params[:id])
    @followings = @user.followings.page(params[:page]).per(15)
    counts(@user)
  end
  
  def followers
    @user = User.find(params[:id])
    @followers = @user.followers.page(params[:page]).per(15)
    counts(@user)
  end
  
  def likes
    @user = User.find(params[:id])
    @likes = @user.likes.page(params[:page]).per(10)
    counts(@user)
  end
  
  

  private
  
  def user_params
    params.require(:user).permit(:name, :favmoviesid, :email, :password, :password_confirmation, :introduce, :gender, :age, :image)
  end
end



