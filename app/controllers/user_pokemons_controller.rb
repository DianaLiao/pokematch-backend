class UserPokemonsController < ApplicationController

  def match
    entry = UserPokemon.find_or_create_by(entry_params)

    entry.update(times_matched: entry.times_matched+1)

    if entry.determine_capture
      entry.update(times_caught: entry.times_caught+1)
    end

    render json: entry

  end

  private

  def entry_params
    params.permit(:pokemon_id, :user_id)
  end

end
