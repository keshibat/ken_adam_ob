Rails.application.routes.draw do
  
  resources :product_reviews
  resources :carts
  devise_for :users, path: "/", path_names: {sign_in: "login"}
  get "/checks/:id", to: "checks#index", as: "checks"
  resources :product_listings
  resources :product_purchased_listings
  resources :sellers
  get "/", to: "pages#index", as: "root"
  get "/restaurants/:id", to: "pages#show", as: "page"
  post "/payments", to: "payments#stripe"
  get "/payments/success", to: "payments#success"
  get "/payments/cancel", to: "payments#cancel"
  get "/payments/chosen-deal", to: "payments#payment", as: "chosen"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
