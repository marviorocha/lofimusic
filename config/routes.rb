Rails.application.routes.draw do
  devise_for :users
  root to: 'artist#index'
  resources :albums

  concern :api_default do
    resources :artist_list
  end

  # versionament of api
  namespace :api, constraints: { format: 'json' } do
    concerns :api_default
  end
end
