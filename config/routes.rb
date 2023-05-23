Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :create, :new]
  end
  get "/users/:id/posts/:id/new" => "comments#new", as: 'new_user_post_comment'
  post "/users/:id/posts/:id" => "comments#create", as: 'user_post_comments'
  post "/users/:id/posts/:id/likes" => "likes#create", as: 'user_post_likes'
end