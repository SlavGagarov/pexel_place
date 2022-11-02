Rails.application.routes.draw do
  resources :application
  resources :sharks
  resources :cells

  root 'application#index' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
