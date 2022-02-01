class Api::V1::LikesController < ApplicationController
  before_action :authenticate_api_v1_user!, only: %i[create destroy]

  def index
    likes = Like.select("id", "user_id", "review_id").all
    render json: likes, status: :ok
  end

  def show
    likes = Like.select("id", "user_id", "review_id").where(review_id: params[:review_id])
    render json: likes, status: :ok
  end

  def create
    like = current_api_v1_user.likes.build(review_id: params[:review_id])
    if like.save
      render json: like, status: :created
    else
      render json: like.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if current_api_v1_user.likes.find_by(review_id: params[:review_id]).destroy
      head :no_content
    else
      render json: { error: "Failed to destroy" }, status: :unprocessable_entity
    end
  end
end
