Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#test'
  root to: 'top#index'
  resources :top, only: [:index]
end
