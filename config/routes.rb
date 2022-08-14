Rails.application.routes.draw do
  get 'users/sign_up'
  get 'users/login'
  get 'users/new_session', to: 'users#new_session'
  post 'users/create_session', to: 'users#login'
  post 'users/create_user', to: 'users#create_user'
  namespace :user do
    resources :books
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
