Rails.application.routes.draw do
  resources :teachers
  resources :students
  devise_for :users
  resources :users
  root 'home#index'
  get 'home/index'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  #get 'users/studentpage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end