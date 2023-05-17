require 'sidekiq/web'

Rails.application.routes.draw do
  resources :product_types
  resources :discounts
  resources :suppliers
  resources :ratings
  resources :bookings
  resources :orders
  resources :buyingmethods
  resources :booking_details
  resources :paymentmethods
  resources :order_details
  resources :points
  resources :clients
  resources :purchasings
  resources :products
  resources :stores
  resources :headers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :responses
  resources :services
  resources :manufacturings
  resources :employees
  resources :departments
  resources :store_chains
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
