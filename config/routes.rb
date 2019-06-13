Rails.application.routes.draw do
  get 'hosts/index'
  root 'application#index'
end
