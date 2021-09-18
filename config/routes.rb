# Rails.application.routes.draw do
#   root 'users#index'
#   post '/login', to: 'auth#login'
#   post '/signup', to: 'users#create'
#   get '/getuser', to: 'users#getuser'
#   resources :friendships
#   resources :comments
#   resources :likes
#   resources :posts
#   resources :users
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end


Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root 'users#index'
      post '/login', to: 'auth#login'
      post '/signup', to: 'users#create'
      get '/profile', to: 'users#profile'
      resources :friendships
      resources :comments
      resources :likes
      resources :posts
      resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
