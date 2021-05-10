Rails.application.routes.draw do
  root to: "toppages#index"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  get "signup", to: "users#new"
  resources :users, only: [:index, :show, :create, :edit, :update] do
    resources :genres, only: [:show]
    member do
      get :followings
      get :followers
    end
  end
    
  resources :reviews, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :genres, only: [:show]
  resources :relationships, only: [:create, :destroy]
end
