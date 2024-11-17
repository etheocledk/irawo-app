Rails.application.routes.draw do
  get "carts/show"
  get "purchases/index", to: "purchases#index", as: :mon_espace
  get "products/index"
  get "products/show"

  root "products#index"
end
