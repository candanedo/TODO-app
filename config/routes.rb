require 'sidekiq/web'
Rails.application.routes.draw do
  get 'buildit/index'
  get 'about/index'
  get 'howitworks/index'
  get 'tasks/index'
  devise_for :users, controllers: { registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks" }
  get 'welcome/index'
  resources :activities
  root 'welcome#index'
  mount Sidekiq::Web => '/sidekiq'

  resources :activities do
	  resources :tasks
  end
end
