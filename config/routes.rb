Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { registrations: 'users/registrations' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  scope module: :web do
    resources :articles
    resources :users, only: [:show]
  end

  # Defines the root path route ("/")
  root "web/articles#index"
end
