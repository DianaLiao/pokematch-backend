# Pokématch 'em All

This is a memory matching card game with a Pokémon theme. After matching the cards, you will have a chance to "catch" them, and you can access information about them in the Pokédex. This was my phase 5 project for Flatiron School.

## Installation

1) Clone this repository to your machine
2) In the project directory, run `bundle install`
3) Run `rails db:create` in order to create the Postgres database
4) Run `rails pokeapi_fetch:seed 151` to seed initial Pokémon data
5) Optional: Run `rails db:seed` for some initial users. 
6) Ensure your local PostgreSQL server is running.
6) Run `rails s` to start the server.
7) Clone the [frontend repo](https://github.com/DianaLiao/pokematch-frontend) to your machine and follow those instructions.


## Using the App

Create a user account or login with an existing email in the database. 

You may change your user info on the welcome screen. You may choose your "companion Pokémon" which will appear next to your name on the leaderboards. Your options will be limited to Pokémon you have "caught" in the game.

To play a game, set a difficulty in the dropdown and click on "Start". Flip cards and attempt to match two of the same Pokémon. If you complete all matches within the time alloted, you will be awarded bonus points. To submit the results of the game, click on the "Submit" button.

## Troubleshooting & Notes

If the frontend doesn't seem to be connected to the backend, make sure that the `serverUrl` in `App.js` is configured correctly to match the rails server URL.

If the Rails server seems to be encountering errors upon startup, double check to see if your PostgreSQL server is running.

As of this writing, there is no functionality to reset your password. (Sorry!)

Some of the seeded Pokémon may have flavor text in a language that is not English.

## Acknowledgements

The database was seeded from [PokeAPI](https://pokeapi.co/).

Thank you to the Flatiron School coaches and instructors who got me this far! And thanks to my niece for being my Pokémon consultant.

This project is licensed under the terms of the MIT license.


