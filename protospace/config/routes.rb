Rails.application.routes.draw do
  devise_for :users
  root "protos#ranking"
  resources :protos, only: [:index, :new, :create]
  resources :users, only: [:edit]
end
