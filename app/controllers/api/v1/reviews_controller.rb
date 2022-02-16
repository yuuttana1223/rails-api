class Api::V1::ReviewsController < ApplicationController
  before_action :authenticate_api_v1_user!, only: %i[create update destroy]
  before_action :ensure_correct_user, only: %i[update destroy]

  def index
    reviews = Review.add_username
    case params[:sort_by]
    when "created_at"
      reviews = reviews.order(created_at: params[:order]) if params[:order]
    when "lesson"
      reviews = reviews.where(lesson_type: params[:type]) if params[:type]
    else
      reviews = reviews.order(created_at: "desc")
    end
    render json: reviews, status: :ok
  end

  def show
    review = Review.add_username.find(params[:id])
    render json: review, status: :ok
  end

  def create
    review = current_api_v1_user.reviews.build(review_params)
    if review.save
      render json: review, status: :created
    else
      render json: review.errors, status: :unprocessable_entity
    end
  end

  def update
    if @review.update(review_params)
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @review.destroy
      head :no_content
    else
      render json: { error: "Failed to destroy" }, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:lecture_name, :teacher_name, :lesson_type, :level_of_satisfaction, :workload, :difficulty, :is_ending_test, :content)
  end

  def ensure_correct_user
    @review = Review.find(params[:id])
    unless current_api_v1_user.id == @review.user_id
      render json: { error: "You are not authorized to access this review" }, status: :unauthorized
    end
  end
end
