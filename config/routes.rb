StreetBeat::Application.routes.draw do
  resources :users

  resources :events

  resources :acts

  # Login
  get "login" => "session#new"
  post "login" => "session#create"

  # Logout
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"

  # Password reset


  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  root 'site#index'


end
