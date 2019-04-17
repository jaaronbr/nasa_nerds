class SessionsController < ApplicationController
  def new
    @user ||= User.new
  end

  def create
    user = User.create(parsed_user_info)
    check_user(user)
  end

  def check_user(user)
    if user && user.authenticate(params[:password])
      valid_user(user)
    else
      invalid_user
    end
  end

  def valid_user(user)
    session[:user_id] = user.id
    redirect_to root_path
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

  private

  def parsed_user_info
    if params[:password] == params[:password_confirmation]
      @new_user_info = {
        first_name: params[:first_name],
        last_name: params[:last_name],
        password: params[:password],
        confirmation: params[:password_confirmation]
      }
    end
  end

end
