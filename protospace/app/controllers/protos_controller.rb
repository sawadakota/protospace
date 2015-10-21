class ProtosController < ApplicationController

  before_action :set_prototype, only: [:edit, :update, :delete]

  def ranking
    @proto = Proto.all
  end

  def new
    @proto = Proto.new
    @proto.thumnails.build
  end

  def create
    current_user.proto.create(proto_params)
    redirect_to :root
  end


  def edit
    set_prototype
  end

  def update
    set_prototype
    @proto.update(proto_params)
    redirect_to :root
  end

  def destroy
    set_prototype
    @proto.destroy
    redirect_to :root
  end

  private
  def proto_params
    params.require(:proto).permit(:title, :concept, :catch_copy, thumnails_attributes: [:image, :status])
  end

  def set_prototype
    @proto = Proto.find(params[:id])
  end
end
