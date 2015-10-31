class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, proto_id: params[:proto_id])
    @likes = Like.where(proto_id: params[:proto_id])
    # render json: @like.to_json
  end

  def destroy
    @like = current_user.likes.find_by(proto_id: params[:proto_id])
    @like.destroy
    @likes = Like.where(proto_id: params[:proto_id])
    # render json: @like.to_json
  end
end
