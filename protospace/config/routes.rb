Rails.application.routes.draw do
  namespace :hoge do
  get 'users/index'
  end

  devise_for :users
  root "proto#ranking"
  resources :proto, only: [:index, :new, :create]
end
