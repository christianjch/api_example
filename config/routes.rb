Rails.application.routes.draw do
  namespace :api, path: "/", constraints: { subdomain: "api" } do
    scope module: :v1 do
      resources :products, only: :index
    end
  end
end
