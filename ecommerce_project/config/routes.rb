# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :pages
  resources 'products', only: %i[index show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'search_results', to: 'search#results', as: 'search_results'

  get 'static/:permalink', to: 'pages#static', as: 'static'

  root to: 'products#index'
end
