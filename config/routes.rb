Rails.application.routes.draw do
  resources :posts
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  root 'posts#index'
end
