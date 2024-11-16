Rails.application.routes.draw do
  get "carts/show"
  get "purchases/index"
  get "products/index"
  get "products/show"

  root "products#index"
end
