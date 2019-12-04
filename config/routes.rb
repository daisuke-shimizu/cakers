Rails.application.routes.draw do
  get 'admins/top'
  devise_for :admins
  devise_for :customers
  resources :customers, only: [ :show, :edit, :update]
end
