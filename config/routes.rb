Rails.application.routes.draw do
  devise_for :users
  resources :books do
    member do
      post 'toggle_favorite', to: "books#toggle_favorite"
    end
  end
  resources :users
  resources :authors
  resources :categories
  root to: "books#index"
end
