Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  get 'board_users/new'
  get 'board_users/create'
  get 'board_users/me'

  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'

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

  # Udemy分
  # root だとトップへのアクセスという意味 get '' と同じ意味
  #root 'boards#index'
  get '/boards', to: 'boards#index', as: "boards"
  get '/boards/new', to: 'boards#new', as: "boardsNew"
  post '/boards', to: 'boards#create', as: 'boardsCreate'
  get '/boards/:id', to: 'boards#show', as: 'boardsShow'
  get '/boards/edit/:id', to: 'boards#edit', as: 'boardsEdit'
  patch '/boards/update/:id', to: 'boards#update', as: 'boardsUpdate'
  get '/boards/delete/:id', to: 'boards#delete', as: 'boardsDelete'
  #resources :boards #リソースで定義する場合
  # resources :boards, only[:index, :new, :create, :new, :delete]

  post '/comments/create', to: 'comments#create'
  get '/comments/delete/:id', to: 'comments#delete'
end
