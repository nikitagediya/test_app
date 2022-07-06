Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/edit'
  get 'categories/new'
  get 'categories/show'
  # get 'home/index'
  resources :posts
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
