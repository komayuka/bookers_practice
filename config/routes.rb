Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins, controllers: { sessions: 'admins/sessions', passwords: 'adimns/passwords', registrations: 'admins/registrations' }
  devise_for :users, controllers: {sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations' }
  root 'homes#top'

  namespace :admin do
    resources :products
  end

  scope module: :user do
    resources :products, only: [:index, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
