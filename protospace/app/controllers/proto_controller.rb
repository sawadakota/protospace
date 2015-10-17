class ProtoController < ApplicationController
  def index
  end

  def new
    @proto = Proto.new
  end

  def create
    Proto.create(proto_params)
    redirect_to controller: :proto, action: :ranking
  end

  private
  def proto_params
    params.require(:proto).permit(:title, :concept, :catch_copy)
  end
end
