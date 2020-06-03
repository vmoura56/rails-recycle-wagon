Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :offers do
<<<<<<< HEAD
        collection do
      get :search
    end
    resources :accepted_offers, only: [:new, :create]
  end
  resources :accepted_offers, only: :destroy
=======

    resources :accepted_offers, only: [:new, :create]
  end
  resources :accepted_offers, only: :destroy

    collection do
      get :search
    end
  end

>>>>>>> a57af0ff90b5ff41da6b21b493c95917440c0935
  get 'offers/dashboard', to: 'offers#dashboard'
end





