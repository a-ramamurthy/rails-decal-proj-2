Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users
  resources :users, :posts

  get "posts", to: "posts#index", as: 'list'
  get "posts/new", to: "posts#new", as: 'new'
  get "posts/:id", to: "posts#show", as: 'show'
  post "posts", to: "posts#create", as: :create
end
