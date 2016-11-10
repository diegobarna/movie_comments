Rails.application.routes.draw do
  root 'movies#search'
  get 'movies/search', to: 'movies#search'
  get 'movies/new', to: 'movies#new', as: :new_movie
  resources :movies, only: [:index, :create, :show]
end
