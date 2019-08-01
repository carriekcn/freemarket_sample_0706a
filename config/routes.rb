Rails.application.routes.draw do
  get 'cards/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'
  resources :top, only: [:index]
  #resources :top do
  #resources :payment, only: [:index, :create]
  #end


end