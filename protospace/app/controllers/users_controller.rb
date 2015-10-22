class UsersController < ApplicationController

  def edit
  end

  def show
    @user = User.find(params[:id])
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

