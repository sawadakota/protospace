class ProtosController < ApplicationController
  def index
  end

  def ranking
  end

  def new
    @proto = Proto.new
    @proto.prototype_photos.build
  end

  def create
    current_user.proto.create(proto_params)
    redirect_to controller: :protos, action: :ranking
  end

  private
  def proto_params
    params.require(:proto).permit(:title, :concept, :catch_copy, prototype_photos_attributes: [:image, :status])
  end
end
