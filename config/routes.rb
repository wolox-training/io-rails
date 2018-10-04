Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'
  resources :books, only: [:index, :show]
  resources :rent, only: [:list, :create]

  #get 'rent', to: 'rent#list'
  #post 'rent/create', to: 'rent#create'
end
