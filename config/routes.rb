Rails.application.routes.draw do
  resources :research_subjects
  resources :researches
  resources :users
  #homepage
  get 'home', to: 'sessions#home'
  get '/signup', to: 'sessions#signup'
  post '/create', to: 'sessions#create'
  get 'login', to: 'sessions#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
