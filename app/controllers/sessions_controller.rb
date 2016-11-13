class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    input_username = params[:user][:username]
    if User.exists?(username: input_username)
      @user = User.find_by(username: input_username)
      if @user.password == params[:user][:password]
        flash[:notice] = "Sign-in was successful!"
        session[:user_id] = @user.id
        redirect_to users_path(@user)
      else
        flash[:alert] = "Password was incorrect. Sign in failed"
        redirect_to = new_sessions_path
      end
    else
      flash[:alert] = "That user does not exist!"
      redirect_to new_sessions_path
    end
  end

    def destroy
      reset_session
      redirect_to root_path
    end
end
