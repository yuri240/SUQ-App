Rails.application.routes.draw do
  root to: 'parts#index'
  resources :parts 
end
