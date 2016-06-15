Rails.application.routes.draw do
  namespace :api, path: "/", constraints: { subdomain: "api" } do
    scope module: :v1 do
      resources :products, only: :index
      resources :movies, only: :index
      resources :seasons, only: :index

      resources :users, only: [] do
        resources :purchases, only: :create
        resources :active_products, only: :index, path: "library"
      end
    end
  end
end
