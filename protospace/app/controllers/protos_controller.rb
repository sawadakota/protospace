class ProtosController < ApplicationController

  before_action :set_prototype, only: [:edit, :show, :update, :destroy]

  def ranking
    @protos = Proto.order("likes_count DESC")
  end

  def index
    @protos = Proto.order("id DESC")
  end

  def show
    @likes = Like.where(proto_id: params[:id])
    @proto = Proto.find(params[:id])
    @comment = Comment.new
    @comments = @proto.comments
    @tags = @proto.tag_list = []
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
    @proto.update(proto_params)
    redirect_to :root
  end

  def destroy
    @proto.destroy
    redirect_to :root
  end

  private
  def proto_params
    tag_list = params[:tag_list]
    params.require(:proto).permit(:title, :concept, :catch_copy, thumnails_attributes: [:image, :status, :id]).merge(tag_list: tag_list)
  end

  def set_prototype
    @proto = Proto.find(params[:id])
  end
end
