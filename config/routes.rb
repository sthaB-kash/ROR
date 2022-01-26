# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
# root "articles#index"

Rails.application.routes.draw do
  # root "main#index"
  root "articles#index"
  get "/about-us", to: "about#index", as: :about #get "/about", to: "about#index" 
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
end
