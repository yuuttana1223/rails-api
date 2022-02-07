class Api::V1::ReviewCommentsController < ApplicationController
  before_action :authenticate_api_v1_user!, only: %i[create update destroy]
  before_action :ensure_correct_user, only: %i[update destroy]

  def index
    review_comments = Comment.add_username.where(review_id: params[:review_id]).order(id: "DESC")
    render json: review_comments, status: :ok
  end

  def create
    review_comment = current_api_v1_user.comments.build(review_comment_params)
    review_comment.review_id = params[:review_id]
    if review_comment.save
      render json: review_comment, status: :created
    else
      render json: review_comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @review_comment.update(review_comment_params)
      render json: @review_comment, status: :ok
    else
      render json: @review_comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @review_comment.destroy
      head :no_content
    else
      render json: { error: "Failed to destroy" }, status: :unprocessable_entity
    end
  end

  private

  def review_comment_params
    params.require(:comment).permit(:body)
  end

  def ensure_correct_user
    @review_comment = Comment.find(params[:id])
    if @review_comment.user_id != current_api_v1_user.id
      render json: { error: "You are not authorized to edit this review comment." }, status: :unauthorized
    end
  end
end
