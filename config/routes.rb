Rails.application.routes.draw do
  devise_for :users
  resources :rooms
  resources :guests
  resources :assignments
  root 'rooms#index'
  get 'home/index'
  post 'assignments/new', to: 'assignments#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
