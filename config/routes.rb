Rails.application.routes.draw do
	
	mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]

	namespace :v1 do

		resources :lists, except: [:new, :edit, :show] do
			resources :items, except: [:new, :edit, :show]
		end

		resources :feeds, only: [:index,:create]
		
	end

end