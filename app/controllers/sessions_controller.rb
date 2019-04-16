class SessionsController < ApplicationController
  def new
    @user ||= User.new
  end

  def create
    user = User.find_by(first_name: params[:session][:first_name])
    check_user(user)
  end

  def check_user(user)
    if user && user.authenticate(params[:session][:password])
      valid_user(user)
    else
      invalid_user
    end
  end

  def valid_user(user)
    session[:user_id] = user.id
    redirect_to dashboard_path
  end

  def invalid_user
    flash[:error] = "Looks like your password is invalid"
    render :new
  end

  def destroy
    session.clear
    redirect_to root_path
    flash[:success] = "You are now logged out"
  end

end
