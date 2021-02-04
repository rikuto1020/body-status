Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "temperatures#index"
  resources :users, only: [:edit, :update]

  resources :temperaturas, only: [:index, :new, :create] do
    member do
      get 'one', to: 'temperaturas#one'
      get 'two', to: 'temperaturas#two'
      get 'three', to: 'temperaturas#three'
      get 'four', to: 'temperaturas#four'
      get 'five', to: 'temperaturas#five'
      get 'six', to: 'temperaturas#six'
      get 'seven', to: 'temperaturas#seven'
      get 'eight', to: 'temperaturas#eight'
      get 'nine', to: 'temperaturas#nine'
      get 'ten', to: 'temperaturas#ten'
      get 'eleven', to: 'temperaturas#eleven'
      get 'twelve', to: 'temperaturas#twelve'
    end
  end


end
