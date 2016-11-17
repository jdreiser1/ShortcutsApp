Rails.application.routes.draw do

  # resources :user
  resource :users
  get '/hotkeys/index' => 'hotkeys#index', as: :hotkeys #creates hotkeys_path
  get '/users' => 'users#show', as: :user_root # creates user_root_path
  resource :sessions
  resources :programs do
    resources :hotkeys do
      member do
        post 'add_favorite'
        delete 'remove_favorite'
      end
    end
  end
  root "welcomes#index"
end
