class LikesController < ApplicationController
  def create
    render action: :create
    @like = Like.create(user_id: current_user.id, proto_id: params[:proto_id])
    @likes = Like.where(proto_id: params[:proto_id])
  end

  def destroy
    render action: :destroy
    @like = current_user.likes.find_by(proto_id: params[:proto_id])
    @like.destroy
    @likes = Like.where(proto_id: params[:proto_id])
  end
end
