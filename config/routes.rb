Rails.application.routes.draw do
  resources :clps do
    resources :clp_contents
  end
  resources :songs
  devise_for :users
  root 'pages#index'
end
