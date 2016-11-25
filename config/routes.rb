Rails.application.routes.draw do
  get 'charges/new'

  get 'charges/create'
  resources :charges, only: [:new, :create]
  #devise_for :users
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :line_items, only: [:create, :update, :destroy]
  root to: "products#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
