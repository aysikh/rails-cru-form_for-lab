Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :show, :create, :update]
  resources :genres, only: [:index, :show, :create, :update]
  resources :artists, only: [:show, :create, :update]

  # get '/artists/:id', to: 'artists#show'

end
