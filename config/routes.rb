Rails.application.routes.draw do
  devise_for :users
  # get 'pages/about'
  # get 'comments/new'
  # get 'comments/create'
  # get 'comments/edit'
  # get 'comments/update'
  # get 'comments/destroy'
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/update'
  # get 'posts/destroy'

  resources :posts do
    resources :comments, only: [:new, :create, :edit, :update, :destroy]
  end
  root "posts#index"
  get '/about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
