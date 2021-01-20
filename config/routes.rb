Rails.application.routes.draw do
  resources :researches do 
    resources :subjects
  end 

  resources :users, only: [:show, :edit] 

 # Sessions Section 
  #root path
  root 'sessions#home'
  #signups routes
  get '/signup', to: 'sessions#signup'
  post '/create', to: 'sessions#create'
  
  #login routes
  get '/login', to: 'sessions#login'
  post '/success', to: 'sessions#new'

  #Logout route
  delete '/logout', to: 'sessions#logout'

  #User routes:
    #show route
    get '/users/:id', to: "users#show"

    #edit patch
    get '/user/:id/edit', to: 'users#edit'
    patch '/users/:id', to: "users#update"

    #delete user
    delete '/user/:id', to: 'users#destroy'
    
    #omniauth routes
    get "/auth/github", to: 'sessions#omniauth'
    match '/auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post]



  #Subjects
  get '/subjects', to: 'subjects#show'

  #Research 
    #show route
      get '/researches', to: 'researches#show'
    
    #new route
      get '/researches/new', to: 'researches#new'


      

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
