Rails.application.routes.draw do
  root "products#index"
  resources :categories, only: %i(index show)
  resources :products, only: %i(index show)
  resources :orders, only: %i(show create)
  resources :carts, only: %i(show create update destroy)
  resources :orders, only: %i(create)
  resources :carts, only: %i(show create update destroy)
  resources :feedbacks, only: %i(new create)
  namespace :account do
    resources :sessions, only: %i(new create destroy)
    resources :users, only: %i(new create show edit update)
  end

  namespace :admin do
    root "dashboard#home"
    resources :users, only: %i(index destroy)
    resources :products, only: %i(index new create edit update destroy)
    resources :categories, only: %i(index new create edit update destroy)
    resources :orders, only: %i(index destroy)
  end
end
