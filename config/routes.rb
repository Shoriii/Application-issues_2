Rails.application.routes.draw do
  root 'home#top'
  get 'home/about' => 'home#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update] do
     member do
     get :following, :followers
     end
  end
  resources :relationships,only: [:create, :destroy]
  resources :books
end