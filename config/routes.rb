Rails.application.routes.draw do
  resources :subjects do
    resources :researches
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


  #Subjects
  get '/subjects', to: 'ubjects#show'

  #Research 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
