class ProtosController < ApplicationController

  def ranking
    @proto = Proto.all
  end

  def new
    @proto = Proto.new
    @proto.thumnails.build
  end

  def create
    current_user.proto.create(proto_params)
    redirect_to controller: :protos, action: :ranking
  end


  def edit
    @proto = Proto.find(params[:id])
  end

  def update
    proto = Proto.find(params[:id])
    proto.update(proto_params)
    redirect_to controller: :protos, action: :ranking
  end

  def destroy
    proto = Proto.find(params[:id])
    proto.destroy
    redirect_to action: :ranking
  end

  private
  def proto_params
    params.require(:proto).permit(:title, :concept, :catch_copy, thumnails_attributes: [:image, :status])
  end

end
