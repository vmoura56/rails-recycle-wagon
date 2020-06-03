Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :offers do

    resources :accepted_offers, only: [:new, :create]
  end
  resources :accepted_offers, only: :destroy

    collection do
      get :search
    end
  end

  get 'offers/dashboard', to: 'offers#dashboard'
end




