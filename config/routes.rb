Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get '/lists', to: 'Lists#index'
  # get '/lists/:id', to: 'Lists#show'

  # get '/lists/new', to: 'Lists#new'
  # post '/lists', to: 'Lists#create'

  # get '/bookmarks/new', to: 'Bookmarks#new'
  # post '/bookmarks', to: 'Bookmarks#create'

  # delete '/bookmarks/:id', to: 'Bookmarks#destroy'

  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end
