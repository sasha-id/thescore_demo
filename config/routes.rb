Rails.application.routes.draw do
  resources :players
  resources :teams
  root 'players#index'
end
