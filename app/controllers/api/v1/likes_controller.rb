class Api::V1::LikesController < ApplicationController
  before_action :authenticate_api_v1_user!, only: %i[create destroy]

  def index
    likes = Like.select("user_id", "review_id").as_json(except: %i[id])
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
