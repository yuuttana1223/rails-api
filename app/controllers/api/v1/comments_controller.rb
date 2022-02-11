class Api::V1::CommentsController < ApplicationController
  def index
    comments = Comment.add_username.order(created_at: "DESC")
    render json: comments, status: :ok
  end
end
