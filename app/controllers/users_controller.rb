class UsersController < ApplicationController
  def show
    redirect_to root_path unless @current_user
    @sort_favorites = @current_user.get_sorted_favorites
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    redirect_to user_root_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

end
