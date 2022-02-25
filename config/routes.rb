Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :equipment_items, except: :destroy do
    resources :bookings, only: :create
  end
  resources :bookings, only: :show
  resources :dashboard, only: :index
end
