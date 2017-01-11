Rails.application.routes.draw do


  resources :stores

  resources :categories do
    end

  devise_for :users
  resources :users

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/sell'

  get 'sales' => 'orders#sales'
  get 'purchases' => 'orders#purchases'

  resources :products do
    

    collection do
      get :search
    end
  end


  root "pages#home"
end
