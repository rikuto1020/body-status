Rails.application.routes.draw do
  resources :products
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "temperaturas#index"
  resources :users, only: [:edit, :update]

  resources :temperaturas, only: [:index, :new, :create]

end
