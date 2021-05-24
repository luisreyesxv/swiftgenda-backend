Rails.application.routes.draw do
  # devise_for :users
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
  namespace :api do
    namespace :v1 do
      
      resources :users
      resources :appointments
      resources :campaigns
      resources :time_blocks
     

      
    end
  end

  post 'auth/request', to: 'authorization#get_authorization'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
