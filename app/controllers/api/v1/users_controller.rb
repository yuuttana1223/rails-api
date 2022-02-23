class Api::V1::UsersController < ApplicationController
  before_action :authenticate_api_v1_user!, only: %i[update]
  before_action :ensure_correct_user, only: %i[update]

  def favorites
    user = User.find(params[:user_id])
    favoriteReviews = user.favorite_reviews.joins(:favorites, :user).select("reviews.*, users.name AS username, favorites.created_at AS favorited_at").order(favorited_at: "desc")
    render json: favoriteReviews, status: :ok
  end

  def update
    if @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    if current_api_v1_user.id != @user.id
      render json: { message: "You are not authorized to access this page" }, status: :unauthorized
    end
  end
end
