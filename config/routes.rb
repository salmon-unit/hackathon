Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/books')
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/" => "home#top"
  # root "articles#index"
end
