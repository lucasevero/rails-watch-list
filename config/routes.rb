Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index', as: :lists
  resources :lists, except: [:index] do
    resources :bookmarks, only: [:new, :create, :update, :destroy]
  end
  get '/movies', to: 'movies#index', as: :movies
  get '/movies/:id', to: 'movies#show', as: :movie
end
