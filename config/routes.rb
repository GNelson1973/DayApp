Rails.application.routes.draw do
  devise_for :users
  resources :days

  authenticated :user do
    root 'days#intro', as: "authenticated_root"
  end

  root 'welcome#index'

  get 'static_pages/results'
  get 'static_pages/goals'

end
