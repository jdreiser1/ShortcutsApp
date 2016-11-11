Rails.application.routes.draw do

  get 'users/show'

  get 'users/new'

  get 'users/create'

resources :programs do
  resources :hotkeys
end
root "programs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
