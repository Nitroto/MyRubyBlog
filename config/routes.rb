Rails.application.routes.draw do
  resources :comments
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "home/index"
  resources :posts
  resources :categories

  get 'pages/about'
  get 'pages/contact'
  get 'pages/resources'

  #match '/about', :to => 'pages#about'
  #match '/contact', :to => 'pages#contact'
  #match '/resources', :to => 'pages#resources'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'

end
