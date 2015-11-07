class LikesController < ApplicationController
  def create
    @proto = Proto.find(params[:proto_id])
    # Like.create(user_id: current_user.id, proto_id: params[:proto_id])
    @likes = Like.where(proto_id: params[:proto_id])
    @like = current_user.likes.create(proto_id: params[:proto_id])
    render layout: false
  end

  def destroy
    @proto = Proto.find(params[:id])
    @like = current_user.likes.find_by(proto_id: params[:id])
    @likes = Like.where(proto_id: params[:id])
    @like.destroy
    render layout: false
  end
end
