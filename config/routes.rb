Rails.application.routes.draw do
  
  root 'home#index'
  get 'pages/about'
  get 'pages/contact'
  resources :quotes
  resources :activities
  resources :exercises
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
