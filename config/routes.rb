Rails.application.routes.draw do
  resources :tags
  resources :business_models
  resources :menu_items

  resources :restaurants do
    resources :orders
    resources :menu_items
  end

  root 'restaurants#index'
end
