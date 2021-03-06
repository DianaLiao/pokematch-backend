Rails.application.routes.draw do

  post "/users/login", to: "users#login"  
  get "/users/top_ten", to: "users#top_ten"
  get "/pokemons/game/:num_cards", to: "pokemons#game"
  post "/user_pokemons/match", to: "user_pokemons#match"
  patch "/users/:id/add_score", to: "users#add_score"

  resources :user_pokemons
  resources :pokemons
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
