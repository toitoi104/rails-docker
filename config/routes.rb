Rails.application.routes.draw do
  resources :weight_histories
  get '', to: 'top#index'

  # /users/1
  # /users/2
  get '/users', to: 'users#index', as: 'users'
  get '/users/:id', to: 'users#show', as: "user"
end
