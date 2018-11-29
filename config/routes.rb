Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resources :items
  post '/items/new', to: 'items#new'
  root 'items#index'
  resources :charges
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
