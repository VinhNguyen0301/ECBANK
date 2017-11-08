Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'home/index'
  resources :accounts
  resources :transactions

  namespace :admin do
    resources :accounts do
      get :confirm, on: :member
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
