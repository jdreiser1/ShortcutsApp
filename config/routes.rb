Rails.application.routes.draw do

resources :programs do
  resources :hotkeys
end
root "programs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
