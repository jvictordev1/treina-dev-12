Rails.application.routes.draw do
  root to: 'home#index'
  resources :recipes, only: [:show, :new, :create, :edit, :update, :destroy] do
    get 'drafts', on: :collection
    patch 'publish', on: :member
    patch 'unpublish', on: :member
  end
  resources :recipe_types, only: [:new, :create]
  resources :cuisines, only: [:new, :create]
end
