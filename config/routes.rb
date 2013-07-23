StreetBeat::Application.routes.draw do
  
  get "login" => "session#new"
  post "login" => "session#create"
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"
  
  resources :users

  resources :events

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  root 'site#index'


end
