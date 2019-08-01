Rails.application.routes.draw do

  #get 'cards/index'

  root to: 'top#index'
  resources :top, only: [:index] do
    #resources :mypage .... do
    resources :cards, only: [:index, :new, :create]
  end

end