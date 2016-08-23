Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :articles do
  	resources :comments
  end

  get '/landing' => 'landing#index'

  root 'welcome#index'
end
