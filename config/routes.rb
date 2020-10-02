Rails.application.routes.draw do
  devise_for :accounts
  get "/dashboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile
  resources :posts, only: [:new, :create, :show]
  root to: "public#homepage"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
