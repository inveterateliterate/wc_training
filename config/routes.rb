Rails.application.routes.draw do
  devise_for :admin_users

  devise_for :users

  # ROOT PATHS
  unauthenticated :user do
    devise_scope :user do
      root to: "devise/sessions#new"
    end
  end

  authenticated :user do
    root to: 'users#dashboard', as: :authenticated_root
  end

  resources :users, only: %i(show update edit) do
    resources :user_workouts, only: %i(show update edit)
  end

  resources :user_workout_drills, only: %i(edit update)
end
