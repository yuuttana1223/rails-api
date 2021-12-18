class Api::V1::ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews, status: :ok
  end

  def show
    review = Review.find(params[:id])
    render json: review, status: :ok
  end

  def create
    review = Review.new(review_params)
    if review.save
      render json: review, status: :created
    else
      render json: review.errors, status: :unprocessable_entity
    end
  end

  def update
    review = Review.find(params[:id])
    if review.update(review_params)
      render json: review, status: :created
    else
      render json: review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if Review.find(params[:id]).destroy
      head :no_content
    else
      render json: { error: "Failed to destroy" }, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:lecture_name, :teature_name, :lesson_type, :adequacy, :submission_quantity, :difficulty, :content)
  end
end
