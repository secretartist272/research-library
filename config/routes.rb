Rails.application.routes.draw do
  resources :research_subjects
  resources :researches
  resources :users
  #homepage routes
  get '/', to: 'sessions#home'
  #signups routes
  get '/signup', to: 'sessions#signup'
  post '/create', to: 'sessions#create'
  
  #login routes
  get '/login', to: 'sessions#login'
  post '/sucess', to: 'sessions#new'

  #Logout route
  get '/logout', to: 'sessions#logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
