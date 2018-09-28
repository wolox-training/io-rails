Rails.application.routes.draw do
  get 'welcome/index'

  mount_devise_token_auth_for 'User', at: 'auth'
  get 'books', to: 'books#index'
  get 'books/shows' , to: 'books#shows'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
