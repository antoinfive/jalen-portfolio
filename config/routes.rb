Rails.application.routes.draw do
  resources :sessions
  resources :arts
  resources :admins
  # resources :portfolio
  root "arts#index"
end
