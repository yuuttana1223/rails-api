Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for "User", at: "auth", controllers: {
                                            registrations: "api/v1/auth/registrations",
                                          }
      namespace :auth do
        resources :sessions, only: %i[index]
      end
      resources :reviews, only: %i[index show create update destroy] do
        resource :likes, only: %i[show create destroy]
        resources :comments, only: %i[index create update destroy], controller: "review_comments"
      end
      resources :likes, only: %i[index]
      resources :comments, only: %i[index]
    end
  end
end
