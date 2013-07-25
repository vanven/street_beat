StreetBeat::Application.routes.draw do
  
 

  get "concert/index"
  get "concert/new"
  get "concert/edit"
  get "concert/show"
  post "concert/create"
  put  "concert/update"


  get "performer/index"
  get "performer/new"
  get "performer/edit"
  get "performer/show"
  post "performer/create"
  put  "performer/update"
  
  get "login" => "session#new"
  post "login" => "session#create"
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"
  
  resources :users

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  root 'site#index'


end
