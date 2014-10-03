Rails.application.routes.draw do
  resources :pictures

  get 'pages/about'

  get 'pages/contact'

devise_for :users
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
