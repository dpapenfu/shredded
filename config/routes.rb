Rails.application.routes.draw do
  root to: 'workouts#index'
  devise_for :users
  resources :reviews
  resources :workouts
  
  get"/users/:username" => "users#show", as: :user
      
end
