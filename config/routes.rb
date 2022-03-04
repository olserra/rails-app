Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :stores, only: [:index, :show, :create]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show, :create]
    end
  end
end
