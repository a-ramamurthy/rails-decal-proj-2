Rails.application.routes.draw do


  root to: 'posts#index'
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :users, :posts

  get "posts", to: "posts#index", as: 'show_posts'
  post "posts", to: "posts#create", as: 'create'
  get "posts/new", to: "posts#new", as: 'new'
  get "posts/:id", to: "posts#show", as: 'show_post'
  put "posts/:id", to: "posts#update", as: 'update_post'
  delete "posts", to: "posts#destroy", as: 'destroy_post'
  get "posts/:id/edit", to: "posts#edit"

  post 'posts/:id', to: "comments#create", as: 'create_comment'

  get 'posts/:id', to: "comments#edit", as: 'edit_comment'

  delete 'comments/delete', to: "comments#delete", as: 'destroy_comment'

  get 'tags/:id', to: 'tags#show', as: 'tag'
  get 'tag/add', to: 'tags#add', as: 'add_tag'
  post 'tags/create', to: "tags#create", as: 'create_tag'
  put 'tags/:id', to: 'tags#add_existing', as: 'add_existing_tag'
  get 'users/:id', to: 'users#show', as: 'show_user'





end
