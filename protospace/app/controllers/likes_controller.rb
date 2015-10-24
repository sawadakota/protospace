class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, proto_id: params[:proto_id])
    @likes = Likes.where(proto_id: params[:proto_id])
  end

  def destroy
    @like = current_user.likes.find_by(proto_id: params[:proto_id])
    @like.destroy
    @likes = Like.where(proto_id: params[:proto_id])
  end
end
