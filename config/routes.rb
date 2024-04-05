Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :songs, only: [:new,:create,:destroy]
  resources :parts 
end
