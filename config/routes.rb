Rails.application.routes.draw do
	resources :gossips do
		resources :comments
	end
	resources :cities do
		resources 	:users 
	end
	resources :comments
	resources :users
	resources :sessions
	
  	get "/contact", to: "contact#index"
	get "/team", to: "team#index"
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end