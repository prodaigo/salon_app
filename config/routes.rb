Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root to: "mains#index"
  resources :mains, only: :index
  resources :users, only: [:show, :edit, :update]
  resources :staffs, only: [:index, :new, :create, :show]
end

