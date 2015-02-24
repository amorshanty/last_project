Rails.application.routes.draw do
  root 'users#new'
  post "/login" => 'login#create'


  resources :users
  resources :tips
  resources :categories

end