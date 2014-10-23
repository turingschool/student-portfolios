Rails.application.routes.draw do
  resources :users, only: [:edit, :update]
  resources :projects
  get "/auth/:provider/callback" => "sessions#create", as: :login
  get "/signout" => "sessions#destroy", as: :logout
  root to: "home#welcome"
end
