Rails.application.routes.draw do
  devise_for :users
  get 'users/profile'
  
  root to: 'home#show'

  resources :lists do
    resources :tasks
  end
end
