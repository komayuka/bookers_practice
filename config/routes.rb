Rails.application.routes.draw do
  get 'products/new'
  devise_for :users
  root 'homes#top'

  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
