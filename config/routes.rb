Rails.application.routes.draw do
  resources :researches
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #homepage
  get 'home', to: 'application#home'
end
