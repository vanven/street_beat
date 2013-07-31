StreetBeat::Application.routes.draw do

  get "reset/:code" => "password#edit"
  get "registrant/:code" => "users#new"

  resource :password, only: [ :update ]

  resources :users
  resources :concerts
  resources :performers
  resources :locations

  # Login
  get "login" => "session#new"
  post "login" => "session#create"

  # Logout
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"

  # TODO: Password reset

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  root 'site#index'

end
