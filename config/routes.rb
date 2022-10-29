Rails.application.routes.draw do
  resources :application
  root 'application#index' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

 #resources :cells do
 #  collection do
 #    get :create_cell_row
 #  end
 #end

end
