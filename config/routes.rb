Rails.application.routes.draw do
  root to: 'workouts#index'
  devise_for :users
  resources :reviews
  resources :workouts
  
  get":username" => "users#show", as: :user
      
end
