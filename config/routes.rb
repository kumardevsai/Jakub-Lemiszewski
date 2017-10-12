Rails.application.routes.draw do
  resources :categories
  resources :users
  resources :books
  root 'users#index'

end
