Rails.application.routes.draw do
  resources :purchases, only: [:index]
  # get "purchases/index", to: "purchases#index", as: :mon_espace
  resources :resources do
    post 'purchase', on: :member 
  end  

  root "resources#index"
end
