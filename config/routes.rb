Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root to: "mains#index"
  resources :mains, only: :index
  resources :users, only: [:show, :edit, :update]
  resources :staffs
  resources :hair_styles
  resources :reservations, only: [:index, :new, :create, :show]
  resources :news, only: [:index, :new, :create, :show, :edit, :update]
end

