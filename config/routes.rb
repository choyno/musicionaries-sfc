Rails.application.routes.draw do
  resources :clp_songs
  resources :clps
  resources :songs
  devise_for :users
  root 'pages#index'
end
