Rails.application.routes.draw do
  resources :welcomes
  resources :sessions
  resources :arts
  resources :admins
  # resources :portfolio
  root "welcomes#index"
end
