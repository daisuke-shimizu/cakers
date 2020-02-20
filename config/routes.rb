Rails.application.routes.draw do

  get 'admins/top'

  devise_for :admins
  devise_for :customers
  get 'items/index'
  namespace :customers, only: [:show, :edit, :update] do
    resources :cart_items, only: [:index, :create, :destroy] do
      collection do
        delete :destroy_all
      end
    end
    resources :addresses, only: [:create, :destroy, :index, :edit, :update]
    resources :orders, only: [:new, :create, :index, :show ]do
      collection do
        get :confirm
      end
    end
  end
  namespace :items,only: [:index, :show] do
    resource :favorites, only: [:create, :destroy]
    resource :reviews, only: [:create, :destroy]
  end
  root "items#index"
  resources :items, only: [:show]
  
  namespace :admins do
    resources :items, only: [:create, :edit, :update, :show, :index]
    resources :orders, only: [:index, :update, :show]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update, :destroy]
  end

  get 'admins/top'
  
end
