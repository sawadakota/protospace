class ProtosController < ApplicationController

  before_action :set_prototype, only: [:edit, :show, :update, :destroy]

  def ranking
    @proto = Proto.all
  end

  def show
  end

  def new
    @proto = Proto.new
    @proto.thumnails.build
  end

  def create
    current_user.protos.create(proto_params)
    redirect_to :root
  end


  def edit
  end

  def update
    binding.pry
    @proto.update(update_params)

    redirect_to :root
  end

  def destroy
    @proto.destroy
    redirect_to :root
  end

  private
  def proto_params
    params.require(:proto).permit(:title, :concept, :catch_copy, thumnails_attributes: [:image, :status])
  end

  def update_params
    params.require(:proto).permit(:title, :concept, :catch_copy, thumnails_attributes: [:image, :status, :id])
  end

  def set_prototype
    @proto = Proto.find(params[:id])
  end
end
