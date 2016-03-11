Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]

  resources :items, except: [:new, :edit] 
  resources :lists, except: [:new, :edit]

end