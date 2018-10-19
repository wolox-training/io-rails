Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  mount_devise_token_auth_for 'User', at: 'auth'
  resources :books, only: [:index, :show] do
    collection do
      get :from_api
    end
  end

  resources :rents, only: [:index, :show, :create]


end
