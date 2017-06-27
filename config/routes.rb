Rails.application.routes.draw do
  resources :menu_items
  resources :restaurants do
    resources :menu_items
  end
end
