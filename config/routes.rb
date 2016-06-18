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

  resources :listings do
    resources:orders
  end

  root "pages#home"
end
