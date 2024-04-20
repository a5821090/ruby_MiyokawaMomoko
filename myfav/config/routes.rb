Rails.application.routes.draw do
controller :sessions do
  get 'login' => :new
  post 'login' => :create
  delete 'logout' => :destroy
end
root to: 'favorites#index'
  resources :users
  resources :favorites
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
