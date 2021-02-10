Rails.application.routes.draw do
  resources :products
  devise_for :users, controllers: {   registrations: 'users/registrations',sessions: 'users/sessions' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "temperaturas#index"
  resources :users, only: [:edit, :update]

  resources :groups, only: [:index,:new, :create, :edit, :update] do
    resources :temperaturas, only: [:index, :new, :create] do
      member do
        get 'list', to: 'temperaturas#list'
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

<<<<<<< Updated upstream
=======
  resources :groups, only: [:index,:new, :create, :edit, :update] 
  
>>>>>>> Stashed changes
end
