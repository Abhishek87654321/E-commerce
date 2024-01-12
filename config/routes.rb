Rails.application.routes.draw do
  root "products#index"
  resources :products
  devise_for :users
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

end
