Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'
  resources :top, only: [:index]
  resources :items, only: [:new, :show]
  resources :purchases, only: [:index]
end
