Rails.application.routes.draw do
  root 'movies#index'
  resources :genres, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :directors, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :movies, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  get '/drafts', to: 'movies#draft', as: 'drafts'
end
