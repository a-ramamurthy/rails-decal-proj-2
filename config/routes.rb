Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users
  resources :users

  get 'posts/:id', to: 'posts#show', as: ''
end
