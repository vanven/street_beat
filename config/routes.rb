StreetBeat::Application.routes.draw do
  resources :events

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  root 'site#index'


end
