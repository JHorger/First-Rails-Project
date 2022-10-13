Rails.application.routes.draw do
  root 'cars#index'
  resources :cars
  # can do multiple routes for multiple resources like -> resources :cars, :drivers, :mechanics -- this is useful for faster routing and less memory usage 
  # :cars, only: [:index, :show] is a good way to include only certain REST routes instead of all 7, or :cars, except: [:index] to omit certain ones
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # can do non-RESTful routes like -> get '/somepath', to: 'somecontroller#someaction' (optional, not recommended)
  # In terminal: bin/rails routes shows routes being used; bin/rails routes --expanded will show them in table format (useful!)
end
