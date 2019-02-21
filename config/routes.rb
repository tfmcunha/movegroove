Rails.application.routes.draw do
  
  get 'about/index'
  root 'home#index'
  
  resources :contact_forms
  resources :quotes
  resources :activities
  resources :exercises
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
