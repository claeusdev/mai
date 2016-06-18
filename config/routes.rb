Rails.application.routes.draw do


  resources :orders
  resources :stores
  resources :categories
  devise_for :users
  resources :users

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/sell'

  get 'sales' => 'orders#sales'
  get 'purchases' => 'orders#purchases'
  resources :listings do
    resources:orders, only: (:new, :create)
  end

  root "pages#home"
end
