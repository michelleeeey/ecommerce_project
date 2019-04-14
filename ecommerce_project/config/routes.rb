# frozen_string_literal: true

Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  devise_for :users
  resources :pages
  resources 'products', only: %i[index show]
  resource :cart, only: [:show]
  resources :order_items, only: %i[create update destroy]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'search_results', to: 'search#results', as: 'search_results'

  get 'static/:permalink', to: 'pages#static', as: 'static'

  root to: 'products#index'
end
