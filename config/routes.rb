Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  get 'items/index'
  namespace :customers, only: [:show, :edit, :update] do
    resources :cart_items, only: [:index, :create, :destroy]
    resources :addresses, only: [:create, :destroy, :index, :edit, :update]
    resources :orders, only: [:new, :create, :index, :show ]
  end
  resources :items, only: [:index, :show]
  
  namespace :admins do
    resources :items, only: [:create, :edit, :update, :show, :index]
    resources :orders, only: [:index, :update, :show]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update, :destroy]
  end

  get 'admins/top'
  
end
