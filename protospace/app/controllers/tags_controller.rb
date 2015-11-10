class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used(20)
  end

  def show
    @protos = Proto.tagged_with(params[:id])
  end
end
