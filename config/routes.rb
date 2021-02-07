# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    post 'create_complex', to: 'checkout#create_complex', as: 'checkout_create_complex'
    post 'create_building', to: 'checkout#create_building', as: 'checkout_create_building'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end
  resources :commercial_units
  resources :complex_buildings
  resources :houses
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
