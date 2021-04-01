Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "home/about" => "homes#index"
  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy] do
   resource :favorites, only: [:create, :destroy]
 end
end
