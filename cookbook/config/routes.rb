Rails.application.routes.draw do
  root to: 'home#index'
  resources :recipes, only: [:show, :new, :create]
  resources :recipe_types, only: [:new, :create]
  resources :cuisines, only: [:new, :create]
end
