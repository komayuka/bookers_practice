Rails.application.routes.draw do

root 'homes#top'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins, controllers: { sessions: 'admins/sessions', passwords: 'adimns/passwords', registrations: 'admins/registrations' }
  devise_for :users, controllers: {sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations' }

  namespace :admin do
    root 'orders#index'
    resources :products
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update]
      get 'customers/:id/orders' => 'orders#order'
    resources :order_products, only: [:update]
  end

  scope module: :user do

    get 'about' => 'homes#about'
    resources :products, only: [:index, :show]
    resource :customers, only: [:show, :update]
      get 'users/profile/edit' => 'users#edit'
      patch 'users/profile' => 'users#update'
      get 'users/unsubscribe' => 'users#unsubscribe'
      patch 'users/withdraw'  => 'users#withdraw'
      post 'orders/confirm' => 'orders#confirm'
      get 'orders/thanx'    => 'orders#thanx'
    resources :orders, only: [:new, :create, :index, :show]
    delete 'cart_items/destroy_all'    => 'cart_items#destroy_all'
    resources :cart_items, only: [:index, :create, :update, :destroy]
    resources :deliveries, only: [:index, :create, :edit, :update, :destroy]
  end
    resources :products, only: [:index, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
