class PokemonsController < ApplicationController

  def index
    pokemons = Pokemon.all

    render json: pokemons
  end

  def game
    cards = Pokemon.game_cards(params[:num_cards].to_i)

    render json: cards
  end




end
