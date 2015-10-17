Rails.application.routes.draw do
  namespace :hoge do
  get 'users/index'
  end

  devise_for :users
  root "protos#ranking"
  resources :protos, only: [:index, :new, :create]
end
