require 'sidekiq/web'
Rails.application.routes.draw do
  get 'buildit/index'
  get 'about/index'
  get 'howitworks/index'
  devise_for :users, controllers: { registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks" }
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activities
  root 'welcome#index'
  mount Sidekiq::Web => '/sidekiq'
  #resources :users, only: :index

  resources :activities do
	  resources :tasks
  end
end
