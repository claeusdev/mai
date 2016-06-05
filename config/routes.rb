Rails.application.routes.draw do
  resources :categories
  devise_for :users
  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/sell'

  resources :listings

  root "pages#home"
end
