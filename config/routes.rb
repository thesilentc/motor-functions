Rails.application.routes.draw do
  root 'application#index'

  get '/signin', to: 'sessions#sign_in'
  post '/signin', to: 'sessions#create'
end
