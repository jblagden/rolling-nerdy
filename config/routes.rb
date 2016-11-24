Rails.application.routes.draw do
  resources :products, only: [:index]
  recource :cart, only: [:show]
  resources :line_items, only: [:create, :update, :destroy]
  root to: "products#index"

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'products/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
