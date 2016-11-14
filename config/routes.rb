Rails.application.routes.draw do

  get 'favorites/index'

  get 'favorites/show'

  get 'favorites/new'

  get 'favorites/edit'

  get 'favorite/index'

  get 'favorite/show'

  get 'favorite/new'

  get 'favorite/create'

  get 'favorite/edit'

  # resources :user
  resource :users
  get '/users' => 'users#show', as: :user_root # creates user_root_path
  resource :sessions
  resources :programs do
    resources :hotkeys
  end
  root "welcomes#index"
end
