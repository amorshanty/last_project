Rails.application.routes.draw do
  root 'users#new'
  post "/login" => 'login#create'
  
  delete "/logout", to: "login#destroy"


  resources :users
  # resources :tips
  resources :categories do
  	resources :tips do 
  		resources :ratings
  	end
	end

end