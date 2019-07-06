Rails.application.routes.draw do
  get "/" => "pages#index"

  resources :listings
  devise_for :users


  resources :users, only:[:show]

  get 'manage-listing/:id/basics' => 'listings#basics', as: 'manage_listing_basics'
end
