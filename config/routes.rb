Rails.application.routes.draw do
  resources :listings
  devise_for :users
  get "/" => "pages#index"

  resources :users, only:[:show]

  
end
