Rails.application.routes.draw do
  resources :users
  get 'hi/index'
  
  get "up" => "rails/health#show", as: :rails_health_check

  get 'about', to: 'pages#about'

  delete '/users/delete_all', to: 'users#delete_all_users', as: 'delete_all'
end
