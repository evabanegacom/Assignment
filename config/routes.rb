# frozen_string_literal: true

Rails.application.routes.draw do
  resources :commercial_units
  resources :complex_buildings
  resources :houses
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
