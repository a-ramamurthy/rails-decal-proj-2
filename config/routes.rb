Rails.application.routes.draw do


  root to: 'posts#index'
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :users, :posts

  get "posts", to: "posts#index"
  post "posts", to: "posts#create", as: :create
  get "posts/new", to: "posts#new", as: 'new'
  get "posts/:id", to: "posts#show"
  put "posts/:id", to: "posts#update", as: 'update_post'
  delete "posts", to: "posts#destroy", as: 'destroy_post'
  get "posts/:id/edit", to: "posts#edit"

  post 'posts/:id', to: "comments#create", as: 'create_comment'

  get 'posts/:id', to: "comments#edit", as: 'edit_comment'

  delete 'comments/delete', to: "comments#delete", as: 'destroy_comment'







end
