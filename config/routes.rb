Rails.application.routes.draw do
  resources :users do
    delete :delete_all, on: :collection
  end
  
  get 'hi/index'
  get 'up' => 'rails/health#show', as: :rails_health_check
  get 'about', to: 'pages#about'
end
