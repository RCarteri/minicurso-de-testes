Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create]
  resources :weapons, only: [:index, :create, :delete, :show]
  resources :enemies, only: [:update, :destroy]
end
