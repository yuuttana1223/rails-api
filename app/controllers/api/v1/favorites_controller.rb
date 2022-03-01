class Api::V1::FavoritesController < ApplicationController
  before_action :authenticate_api_v1_user!, only: %i[create destroy]

  def index
    favorites = Favorite.select("user_id", "review_id").order(created_at: "desc").as_json(except: %i[id])
    render json: favorites, status: :ok
  end

  def create
    favorite = current_api_v1_user.favorites.build(review_id: params[:review_id])
    if favorite.save
      render json: favorite.as_json(only: %i[user_id review_id]), status: :created
    else
      render json: favorite.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if current_api_v1_user.favorites.find_by(review_id: params[:review_id]).destroy
      head :no_content
    else
      render json: { error: "Failed to destroy" }, status: :unprocessable_entity
    end
  end
end
