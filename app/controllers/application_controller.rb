class ApplicationController < ActionController::Base
  # helper_methodを提供する
  include DeviseTokenAuth::Concerns::SetUserByToken

  # CSRFトークン検証をスキップ
  skip_before_action :verify_authenticity_token
  helper_method :current_user, :user_signed_in?
end
