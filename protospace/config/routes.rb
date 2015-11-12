Rails.application.routes.draw do
  devise_for :users
  root "protos#ranking"
  resources :protos do
    resources :comments, only: [:new, :create, :destroy]
  end
  resources :likes, only: [:create, :destroy]
  resources :users, only: [:edit, :update, :show]
  resources :tags, only: [:index, :show]
end
