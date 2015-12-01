Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users
  resources :users, :posts

  get "posts", to: "posts#index"
  get "posts/new", to: "posts#new", as: 'new'
  get "posts/:id", to: "posts#show"
  post "posts", to: "posts#create", as: :create
  get "posts/:id/edit", to: "posts#edit"
  put "posts/:id", to: "posts#update", as: 'update_post'
  delete "posts/:id", to: "posts#destroy"
end
