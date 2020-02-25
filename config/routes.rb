Rails.application.routes.draw do
  root 'home#top'
  get 'home/about' => 'home#about'
  get 'search' => 'searches#search'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books

end