Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'
  resources :books, only: [:index, :show]
  resources :rents, only: [:index]

  #get 'rent', to: 'rent#list'
  post 'rents/create', to: 'rents#create'
  get 'rents/index', to: 'rents#index'
end
