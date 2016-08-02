Rails.application.routes.draw do
  devise_for :users
  resources :days

  authenticated :user do
    root 'days#index', as: "authenticated_root"
  end

  root 'welcome#index'

end
