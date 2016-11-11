Rails.application.routes.draw do
  post 'users/login', as: :user_login

  get 'users/:id', to: 'users#show', as: :user

  root 'movies#search'
  get 'movies/search', to: 'movies#search'
  get 'movies/new', to: 'movies#new', as: :new_movie
  resources :movies, only: [:index, :create, :show] do
    resources :comments, only: [:create]
  end
end
