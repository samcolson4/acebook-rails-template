Rails.application.routes.draw do
  get 'friendlist/add_friend'
  root 'posts#index'

  resources :users, only: [:new, :create]
  get 'sessions/new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  post 'logout', to: 'sessions#logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :likes
  end

  resources :friends
  
end
