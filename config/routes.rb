Rails.application.routes.draw do
  
  resources :quotes
  root 'home#index'
  resources :activities
  resources :exercises
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
