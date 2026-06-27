Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts do
    resources :comments, only: [:create, :destroy]
    member do
      patch :publish
    end
  end

  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index, :show]
    end
  end
end