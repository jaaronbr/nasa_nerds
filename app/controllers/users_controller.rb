class UsersController < ApplicationController
  before_action :require_login

  def create
    user = User.create(user_params)
    user.save ? user_valid(user) : user_not_valid(user)

  end

  def show
    @user = current_user
    @current_pics = @user.nasa_pics if @user.nasa_pics
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :password)
  end

  def require_login
    unless current_user
      flash[:notice] = "You must be signed in to visit this page."
      redirect_to root_path
    end
  end
end
