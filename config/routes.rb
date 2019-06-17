Rails.application.routes.draw do

  # Authentication
  # @implemented
  devise_for :users

  # Dashboard
  # @implemented
  namespace :dashboard do

  end

  # Application
  # @implemented
  root to: 'home#index'
  resources :contact, only: [:create]
end
