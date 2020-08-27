Rails.application.routes.draw do
  resources :blogs, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
