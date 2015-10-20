class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:username, :member, :profile, :works, :avatar)
  end
end

