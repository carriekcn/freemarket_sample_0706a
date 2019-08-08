Rails.application.routes.draw do

  root to: 'top#index'
  resources :top, only: [:index]
  resources :cards, only: [:index, :new, :create]

end