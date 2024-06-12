Rails.application.routes.draw do
  devise_for :users
  root 'habits#index'
  resources :habits
end
