class UsersController < ApplicationController

  def show
    unless @current_user
      redirect_to root_path @current_user
    else
      @sort_favorites = @current_user.get_sorted_favorites
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    session[:user_id] = @user.id
    redirect_to user_root_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

end
