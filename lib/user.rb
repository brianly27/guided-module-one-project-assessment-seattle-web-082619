class User < ActiveRecord::Base
    has_many :companions
    has_many :pokemons, through: :companions


    def view_roster
        puts `clear`
        Game.banner
        select_roster.map.with_index do |relationship, i|
            puts "#{i+1}. Pokemon: #{relationship.pokemon.name},   Nickname: #{relationship.nickname}"
        end
    end

    def select_roster
        self.companions
    end

    def encounter_random_pokemon
        Pokemon.all.find_by(pokemon_number: rand(1..(Pokemon.all.count)))
    end

    def capture_pokemon(pokemon)
        self.pokemons << pokemon
    end
    
    def rename_pokemon
        renaming = true  
        while renaming == true
            puts "Which pokemon would you like to give a nickname to?"
            puts "Type in it's position in the roster and press enter"
            puts
            self.view_roster
            puts "#{self.select_roster.length+1}. Go back."

            rename_input = STDIN.gets.chomp.to_i
            if rename_input.between?(1,(self.select_roster.length))
                puts `clear`
                Game.banner
                puts "What should #{self.select_roster[rename_input-1].pokemon.name}'s name be?"
                name_input = STDIN.gets.chomp
                self.rename_companion(rename_input, name_input)
            elsif rename_input == (self.select_roster.length + 1)
                puts `clear`
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
        releasing = true
        while releasing == true
            puts `clear`
            Game.banner
            puts "Which pokemon would you like to release?"
            puts "Type in it's position in the roster and press enter"
            puts 
            self.view_roster
            puts "#{self.select_roster.length+1}. Go back."
            release_input = STDIN.gets.chomp.to_i
            if release_input.between?(1,(self.select_roster.length))
                puts `clear`
                Game.banner
                puts "Say goodbye to your #{self.select_roster[release_input-1].pokemon.name}."
                goodbye = STDIN.gets.chomp
                self.release_companion(release_input)
                self.release_message(goodbye)
            elsif release_input == (self.select_roster.length + 1)
                puts `clear`
                releasing = false
            else
                puts "Try again"
            end
        end
    end

    def release_companion(release_input)
        @release_pokemon = self.select_roster[release_input-1]
        self.select_roster.destroy(self.select_roster[release_input-1])
    end

    def release_message(message)
        puts `clear`
        Game.banner
        puts "You say to your pokemon: #{message}"
        puts "You release #{@release_pokemon.pokemon.name} into the wild."
        puts "Press any key to continue.."
        STDIN.getc
        puts "                                                   \r"
    end
    
    def workout_pokemon
        working = true
        while working == true
            puts `clear`
            Game.banner
            puts "Which pokemon would you like to take a jog with?"
            puts "Type in it's position in the roster and press enter"
            puts 
            self.view_roster
            puts "#{self.select_roster.length+1}. Go back."
            workout_input = STDIN.gets.chomp.to_i
            if workout_input.between?(1,(self.select_roster.length))
                puts `clear`
                Game.banner
                workout_partner = self.select_roster[workout_input-1].pokemon
                workout_partner.workout(1)
                sleep 0.75
                puts `clear`
                Game.banner
                workout_partner.workout(2)
                sleep 0.75
                puts `clear`
                Game.banner
                workout_partner.workout(3)
                sleep 0.75
                puts `clear`
                Game.banner
                workout_partner.workout(4)
                sleep 0.75
                puts `clear`
                Game.banner
                workout_partner.workout(5)
                sleep 0.75
                puts `clear`
                Game.banner
                workout_partner.workout(6)
                sleep 0.75
                puts "You and your pokemon feel stronger already!"
                puts "Say something to your pokemon:"
                workout_message = STDIN.gets.chomp
                self.postworkout_message(workout_message)
            elsif workout_input == (self.select_roster.length + 1)
                puts `clear`
                working = false
            else
                puts "Try again"
            end
        end
    end


    def postworkout_message(message)
        puts `clear`
        Game.banner
        puts "You say to your pokemon: #{message}"
        puts "Press any key to continue.."
        STDIN.getc
        puts "                                                   \r"
    end



end

