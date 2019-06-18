# frozen_string_literal: true

Rails.application.routes.draw do

  # Admin
  # @implemented
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Authentication
  # @implemented
  devise_for :users, :controllers => {
      :omniauth_callbacks => 'users/omniauth_callbacks'
  }

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
