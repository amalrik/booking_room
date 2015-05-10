Rails.application.routes.draw do
  devise_for :users
  resources :reservations, only: [:index, :destroy, :update]
  root to: "home#index"
end
