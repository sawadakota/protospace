class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to controller: 'protos', action: 'ranking'
  end

  private
  def update_params
    params.require(:user).permit(:username, :member, :profile, :works, :avatar)
  end
end
