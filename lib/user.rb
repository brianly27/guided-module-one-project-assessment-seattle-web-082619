class User < ActiveRecord::Base
    has_many :companions
    has_many :pokemons, through: :companions


    def view_roster
        puts "Here are all your pokemon"
        self.companions.map do |relationship|
            puts "pokemon:#{relationship.pokemon.name}, nickname:#{relationship.nickname}"
        end
    end

    def encounter_random_pokemon
        Pokemon.all.find_by(pokemon_number: rand(1..5))
    end

    def capture_pokemon(pokemon)
        self.pokemons << pokemon
    end
    
    



end
