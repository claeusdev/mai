Rails.application.routes.draw do


  resources :stores
  resources :categories
  devise_for :users
  resources :users

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/sell'

  resources :listings

  root "pages#home"
end
