Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bookings, only: [ :destroy ]
  resources :products do
    resources :bookings, only: [ :create ]
  end
  resources :users, only: [ :show, :edit, :update ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
