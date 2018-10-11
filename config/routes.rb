Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'about/index'
    get 'howitworks/index'
    resources :widgets
    devise_for :users
    get 'welcome/index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :activities
    root 'welcome#index'
    #resources :users, only: :index

    resources :activities do
      resources :tasks
    end
end
