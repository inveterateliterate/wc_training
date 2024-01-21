Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  # ROOT PATHS
  unauthenticated :user do
    devise_scope :user do
      root to: "devise/sessions#new"
    end
  end

  resources :workouts, only: [:show] do
    resources :user_workout_drills, only: [:show, :edit, :update]
  end

  authenticated :user do
    root to: 'users#dashboard', as: :authenticated_root
  end

  resources :users, only: %i(show update edit) do
    resources :user_workouts, only: %i(show update edit)
  end

  resources :user_workout_drills, only: %i(edit update)
end
