Rails.application.routes.draw do
  #get 'todos/index'
  #get 'todos/show'
  #get 'todos/derete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get  "/health",    to: "api_test#return"

  #post  "/todos",    to: "todos#update"
  #get  "/health",    to: "api_test#return"
  #get  "/health",    to: "api_test#return"
  #get  "/health",    to: "api_test#return"

  resources :todos
end
