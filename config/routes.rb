Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :authentications, only: [:create]
      resources :users, only: [:index, :show, :create, :update]
      resources :clients, only: [:index, :show, :create, :update]
      resources :departments, only: [:index, :show, :create, :update, :destroy]
      resources :provinces, only: [:index, :show, :create, :update, :destroy]
      resources :districts, only: [:index, :show, :create, :update, :destroy]
      resources :locations, only: [:index, :show, :create, :update, :destroy]
      resources :certificate_categories, only: [:index, :show, :create, :update, :destroy]
      resources :countries, only: [:index, :show, :create, :update]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
