Rails.application.routes.draw do
  root 'champions#index'
  resources :champions
  resources :skills
end
