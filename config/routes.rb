Rails.application.routes.draw do

  devise_for :users
  # resources :user
  get '/users' => 'users#show', as: :user_root # creates user_root_path
  resource :session
  resources :programs do
    resources :hotkeys
  end
  root "welcomes#index"
end
