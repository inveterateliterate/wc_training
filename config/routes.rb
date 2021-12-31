Rails.application.routes.draw do
  devise_for :admin_users
  devise_for :users

  authenticate :admin_user do
    mount Avo::Engine, at: Avo.configuration.root_path
  end

  resources :workouts, only: [:show]
end
