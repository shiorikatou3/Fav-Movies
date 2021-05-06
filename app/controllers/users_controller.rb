class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:edit, :update]
  
  
  def index
    @users = User.order(id: :desc).page(params[:page]).per(20)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = "登録が完了しました。"
      redirect_to @user
    else
      flash.now[:danger] = "登録に失敗しました。"
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

=begin 
if current_user == @user
=end

  def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
      flash[:success] = "プロフィールを更新しました。"
      redirect_to @user
    else
      flash.now[:danger] = "更新に失敗しました。"
      render :edit
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :favmoviesid, :email, :password, :password_confirmation, :introduce, :gender, :age, :image)
  end
end



