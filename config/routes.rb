Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :equipment_items, except: [:destroy] do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :bookings, only: :create
  end
  resources :bookings, only: :index
  resources :dashboard, only: :index
end
