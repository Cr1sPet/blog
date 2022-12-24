Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  scope module: :web do
    resources :articles
  end

  # Defines the root path route ("/")
  root "web/articles#index"
end
