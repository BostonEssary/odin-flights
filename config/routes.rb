Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "flights#index"

  resources :bookings, only: [:create, :new, :show]
  get '/flights', to: 'flights#index'
end
