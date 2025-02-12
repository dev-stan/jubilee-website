Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "offers#index"
  resources :offers do
    resources :reservations, only: [:create]
  end
  get 'cart', to: 'carts#show'
  delete 'cart/reservations/:id', to: 'carts#destroy', as: :cart_reservation
  post 'capture_order', to: 'orders#capture_order'


end
 