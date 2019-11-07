Rails.application.routes.draw do
  resources :title_basics
  resources :players
  root to: 'home#index'
  #get '/name_basics', to: 'name_basics#index'
  post '/process', to: 'trades#create'
  post '/', to: 'errors#routing'

  # catch all
  match '*a', to: 'errors#routing', via: [:get, :post]
end
