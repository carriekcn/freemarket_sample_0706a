Rails.application.routes.draw do

  get 'profile/index'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  get 'signup/select' , to: 'signups#select'
  get 'signup/tel' , to: 'signups#tel'
  get 'signup/address' , to: 'signups#address'
  get 'signup/pay' , to: 'signups#pay'
  get 'signup/finish' , to: 'signups#finish'
  get '/logout', to: 'logout#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'
  resources :users, only: [:show, :new]
  resources :top, only: [:index]
  resources :items, only: [:new, :create, :show, :update, :destroy]
  resources :purchases, only: [:index]
  resources :users, only: [:index]
  resources :cards, only: [:index, :new] do
    collection do
      get 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
    end
  end
  resources :items do
    member do
      get :confirmation
      patch :confirmed
    end
  end
  resources :profile, only: [:index]
end
