Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :locations

  get 'login' => 'sessions#new', as: :login  
  post 'login' => 'sessions#create'  
  post 'logout' => 'sessions#destroy', as: :logout
  
  
  get 'posts/index'
  get 'posts/show' => 'posts#show'
  root 'posts#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
