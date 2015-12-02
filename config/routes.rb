Rails.application.routes.draw do


  root to: 'posts#index'
  devise_for :users
  resources :users, :posts

  get "posts", to: "posts#index"
  post "posts", to: "posts#create", as: :create
  get "posts/new", to: "posts#new", as: 'new'
  get "posts/:id", to: "posts#show"
  put "posts/:id", to: "posts#update", as: 'update_post'
  delete "posts", to: "posts#destroy", as: 'destroy_post'

  post 'posts/:id', to: "comments#create", as: 'create_comment'

  get 'comments/edit'

  get 'comments/delete'

  get "posts/:id/edit", to: "posts#edit"





end
