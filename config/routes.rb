Rails.application.routes.draw do
  resources :users
  resources :favorites
  resources :interests
  resources :articles
  resources :user_interests
  get "/login", to: "users#login", as: "login"
  post "/login", to: "users#handle_login"
  delete "/logout", to: "users#logout"

end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

