Rails.application.routes.draw do
  devise_for :users
  get "/" => "pages#index"

  resources :users, only:[:show]
end
