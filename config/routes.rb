Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users
  resources :users

  get "posts", to: "posts#index", as: :posts
  get "posts/new", to: "posts#new", as: 'new'
  get "posts/:id", to: "posts#show", as: :post
  post "posts", to: "posts#create", as: :create
end
