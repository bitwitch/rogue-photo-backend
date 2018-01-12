Rails.application.routes.draw do
  resources :users, only: [:index, :create, :update, :destroy]
  resources :galleries, only: [:index, :create, :update, :destroy]
end
