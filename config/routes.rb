Rails.application.routes.draw do

  post "/users/login", to: "users#login"  
  get "/pokemons/game/:num_cards", to: "pokemons#game"

  resources :user_pokemons
  resources :pokemons
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
