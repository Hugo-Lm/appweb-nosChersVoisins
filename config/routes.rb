Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :products do
    resources :bookings, only: [ :new, :create, :destroy ]
  end
  resources :users, only: [ :show, :new, :create, :edit, :update ] do
    resources :bookings, only: [ :index, :destroy ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end