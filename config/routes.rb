Rails.application.routes.draw do
  get "/" => "pages#index"

  resources :listings
  devise_for :users

  resources :users, only:[:show]

  get 'manage-listing/:id/basics' => 'listings#basics', as: 'manage_listing_basics'


  resources :listings do
    resources :reservations, only: [:new, :create]
  end

  get '/reservation' => 'reservations#index'
  get '/reserved' => 'reservations#reserved'

end
