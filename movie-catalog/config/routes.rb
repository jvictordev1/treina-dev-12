Rails.application.routes.draw do
  root 'home#index'
  resources :genres, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
