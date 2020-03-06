Pokemon CLI
========================


This is the first command line app I have designed and created. Users can log in and catch pokemon. Users can interact with their pokemon in various ways CRUD data in the database:
  - users can log in again and view their saved pokemon (READ)
  - catching a pokemon (CREATE)
  - giving your pokemon a nickname (UPDATE)
  - releasing your pokemon into the wild (DELETE)
  - work out with your pokemon 

---

## Gems and API

  - API reading: gem ‘json’ , gem ‘rest-client’
  - Database: gem ‘sinatra-activerecord’, gem ‘sqlite3’,
  - IRB shell: gem ‘pry’
  - Ruby: gem ‘rake’
  - File access: gem ‘require_all’
  - Pokemon API: https://pokeapi.co/api/v2/pokemon/
  - Pokemon ASCII: https://gist.githubusercontent.com/brianly27/ab7695417f8924fc7d520b7ddef09bd6/raw/f146c116b934bb24c4db5981c9c1028dbc29eae1/pokedex_ascii.h


## How to play

  - https://github.com/brianly27/guided-module-one-project-assessment-seattle-web-082619
  - The game can be started by executing 'rake game' into the terminal
  - Enter your name and press enter
  - Enter commands to catch or interact with your pokemon
  - Leave the game by navigating back to the first menu and select the option to exit
