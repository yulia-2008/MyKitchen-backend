Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :favorites
      resources :users_favorites

      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/signup', to: 'users#new'
      post '/signup', to: 'users#create'
end
end
end
