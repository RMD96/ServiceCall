Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :categories, only: [:index, :show]
  resources :professionals, only: [:show, :edit, :update]
  resources :service_listings, except: [:index, :show]

  resources :appointments, only: [:create]
  resources :messages, only: [:index, :new, :create, :show]
  resources :ratings, only: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
