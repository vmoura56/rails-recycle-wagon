Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :offers
  get 'offers/dashboard', to: 'offers#dashboard'
end
