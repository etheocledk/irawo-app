Rails.application.routes.draw do
  get "carts/show"
  get "purchases/index", to: "purchases#index", as: :mon_espace

  resources :resources

  root "resources#index"
end
