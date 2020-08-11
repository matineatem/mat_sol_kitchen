Rails.application.routes.draw do

  resources :users, only: [:index, :show, :new]
  resources :desserts, only: [:index, :show]
  resources :orders, only: [:show, :new]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
