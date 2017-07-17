Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      # /api/v1/users
      # /api/v1/users/:user_id 
      resources :users, only: [:create, :show] do 
        resources :stocks, only: [:index, :show, :create, :update, :destroy]
      end 
      # /api/v1/auth
      post '/auth', to: "auth#login"
      post '/auth/refresh', to: "auth#refresh"

      # /api/v1/search
      get '/search', to: 'searches#search'
    end 
  end 
end
