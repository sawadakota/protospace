Rails.application.routes.draw do
  devise_for :users
  root "protos#ranking"
  resources :protos
  resources :users, only: [:edit, :update, :show]
end
