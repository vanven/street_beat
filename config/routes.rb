StreetBeat::Application.routes.draw do
  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  root 'site#index'


end
