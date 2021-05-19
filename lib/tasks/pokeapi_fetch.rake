namespace :pokeapi_fetch do
  desc "Get first 151 pokemon and seed database"

  task seed_types: :environment do
    puts "eventually seed types..."
  end

  task seed_151: :environment do

    puts "here we go!"

    Pokemon.destroy_all
    Pokemon.reset_pk_sequence

    i = 1

    until i > 151 do

      response = RestClient.get("https://pokeapi.co/api/v2/pokemon-species/#{i}")
      pokedata = JSON.parse(response)

      new_pokemon = Pokemon.create(
        name: pokedata["name"],
        api_id: pokedata["id"],
        capture_rate: pokedata["capture_rate"],
        color: pokedata["color"]["name"],
        flavor_text: pokedata["flavor_text_entries"][0]["flavor_text"]
      )
      
      response2 = RestClient.get("https://pokeapi.co/api/v2/pokemon/#{new_pokemon.api_id}")
      pokedata2 = JSON.parse(response2)


      new_pokemon.update(
        api_type_id: pokedata2["types"][0]["type"]["url"].split("/")[-1],
        front_sprite: pokedata2["sprites"]["front_default"],
        back_sprite: pokedata2["sprites"]["back_default"]
      )

      if i%20 == 0
        puts "#{i} pokemon seeded"
      end

      i += 1
    end


    puts "first 151 pokemon seeded"
  end

end
