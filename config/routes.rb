Rails.application.routes.draw do
  # get 'user_interests/index'
  # get 'user_interests/show'
  # get 'user_interests/new'
  # get 'user_interests/create'
  # get 'interests/index'
  # get 'interests/show'
  # get 'interests/new'
  # get 'interests/create'
  # get 'favorites/index'
  # get 'favorites/show'
  # get 'favorites/new'
  # get 'favorites/create'
  # get 'articles/index'
  # get 'articles/show'
  # get 'articles/new'
  # get 'articles/create'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  resources :user_interests
  resources :users
  resources :favorites
  resources :interests
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
