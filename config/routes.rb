require 'sidekiq/web'

Rails.application.routes.draw do
  resources :responses
  resources :purchasings
  resources :ratings
  resources :payments
  resources :discounts
  resources :orders
  resources :bookings
  resources :services
  resources :clients
  resources :suppliers
  resources :products
  resources :manufacturings
  resources :product_types
  resources :employees
  resources :departments
  resources :stores
  resources :store_chains
  resources :headers
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
