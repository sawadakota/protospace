Rails.application.routes.draw do
  devise_for :users
  root "proto#ranking"
  resources :proto, only: [:index, :new]
end
