Rails.application.routes.draw do
  get 'users/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/login" => "users#login_form"
  get "/signup" => "users#new"
  post "/users/create" => "users#create"
  # Defines the root path route ("/")
  get "/" => "home#top"
  # root "articles#index"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  
end
