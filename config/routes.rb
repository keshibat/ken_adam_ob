Rails.application.routes.draw do
  
  devise_for :users, path: "/", path_names: {sign_in: "login"}
  get "/checks/:id", to: "checks#index", as: "checks"
  resources :product_reviews
  resources :product_listings
  resources :product_purchased_listings
  resources :sellers
  get "/", to: "pages#index", as: "root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
