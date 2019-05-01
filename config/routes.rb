Rails.application.routes.draw do
  resources :product_reviews
  resources :product_listings
  resources :product_purchased_listings
  resources :sellers
  devise_for :users, path: "/", path_names: {sign_in: "login"}
  get "/", to: "sellers#index", as: "root"
  get "/pages/:id", to: "pages#index", as: "pages"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
