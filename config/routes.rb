Rails.application.routes.draw do
  devise_for :users
  resources :reservations, only: [:index, :destroy, :create]
  root to: "home#index"
end
