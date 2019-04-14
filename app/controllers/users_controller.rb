class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    user.save ? user_valid(user) : user_not_valid(user)
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :password)
  end
end
