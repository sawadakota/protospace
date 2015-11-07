class CommentsController < ApplicationController
  def create
    @comment = Comment.create(create_params)
    @comments = Comment.all
    render layout: false
  end

  private
  def create_params
    params.require(:comment).permit(:text, :proto_id, :user_id)
  end
end
