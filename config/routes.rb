Rails.application.routes.draw do
  resources :orders
  resources :tags
  resources :business_models
  resources :menu_items
  resources :restaurants do
    resources :menu_items
  end
end
