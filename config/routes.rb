Rails.application.routes.draw do
  resources :weight_histories

  # resourcesから必要なRouteingのみ利用する
  # resources :weight_histories, only:[destroy]
  # resources :weight_histories, only:[destroy, index]

  # resourcesから不要なRouteingを除く
  # resources :weight_histories, except:[destroy]
  # resources :weight_histories, except:[destroy, index]

  get '', to: 'top#index'

  # /users/1
  # /users/2
  get '/users', to: 'users#index', as: 'users'
  get '/users/:id', to: 'users#show', as: "user"
end
