Rails.application.routes.draw do



  resources :reviews
  resources :workouts
  devise_for :users
end
