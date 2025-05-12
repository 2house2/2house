Rails.application.routes.draw do
  get "home/index"
  devise_for :users
  resources :properties
  get "search", to: "properties#search", as: "search_properties"
  root "home#index"
end
