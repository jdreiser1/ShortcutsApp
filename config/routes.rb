Rails.application.routes.draw do

  # resources :user
  resource :users
  get '/users' => 'users#show', as: :user_root # creates user_root_path
  resource :sessions
  resources :programs do
    resources :hotkeys
  end
  root "welcomes#index"
end
