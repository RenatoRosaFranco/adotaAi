Rails.application.routes.draw do

  namespace :dashboard do
    get 'profiles/index'
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Authentication
  # @implemented
  devise_for :users

  # Dashboard
  # @implemented
  namespace :dashboard do
    get '', to: 'profiles#index'
    resources :animals
    resources :profiles, only: [:index, :show, :edit, :update]
  end

  # Application
  # @implemented
  root to: 'home#index'
  resources :contact, only: [:create]
end
