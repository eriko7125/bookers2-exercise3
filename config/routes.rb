Rails.application.routes.draw do
  devise_for :users #これが先
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resource :book_comments, only: [:create, :destroy]
  end
  root 'home#top'
  get 'home/about'
end
