Rails.application.routes.draw do
  devise_for :users
  root to: "driving_offers#index"
  # root to: "pages#home"
  # in pages views

  resources :driving_offers do
    resources :bookings, only: [:new, :create, :index]
  end
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/dashboard", to: "dashboards#index", as: :dashboard_index
  delete "/dashboard/:id", to: "dashboards#destroy"

  # Defines the root path route ("/")
end
