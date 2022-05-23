Rails.application.routes.draw do
  devise_for :users
  resources :driving_offers
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "driving_offers#index"
end
