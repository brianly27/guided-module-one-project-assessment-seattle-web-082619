class User < ActiveRecord::Base
    has_many :companions
    has_many :pokemons, through: :companions


    def view_roster
        select_roster.map.with_index do |relationship, i|
            puts "#{i+1}. Pokemon: #{relationship.pokemon.name},   Nickname: #{relationship.nickname}"
        end
    end

    def select_roster
        self.companions
    end

    def encounter_random_pokemon
        Pokemon.all.find_by(pokemon_number: rand(1..5))
    end

    def capture_pokemon(pokemon)
        self.pokemons << pokemon
    end
    
    def rename_pokemon
        renaming = true  
        while renaming == true 
            puts "Which pokemon would you like to give a nickname to?"
            puts "Type in it's position in the roster and press enter"
            self.view_roster
            puts "#{self.select_roster.length+1}. Go back."
            rename_input = STDIN.gets.chomp.to_i
            if rename_input.between?(1,(self.select_roster.length))
                puts "What should #{self.select_roster[rename_input-1].pokemon.name}'s name be?"
                name_input = STDIN.gets.chomp
                self.rename_companion(rename_input, name_input)
            elsif rename_input == (self.select_roster.length + 1)
                renaming = false
            else 
                puts "Try again"
            end
        end
    end

    def rename_companion(rename_input, name_input)
        rename_pokemon = self.select_roster[rename_input-1]
        rename_pokemon.update(nickname: name_input)
    end 
    
    def release_pokemon

    end

    def release_companion(release_input, message)

    end
    


end
