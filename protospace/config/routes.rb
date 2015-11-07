Rails.application.routes.draw do
  devise_for :users
  root "protos#ranking"
  resources :likes, only: [:create, :destroy]
  resources :protos
  resources :users, only: [:edit, :update, :show]
  resources :comments, only: [:new, :create, :destroy]
end
