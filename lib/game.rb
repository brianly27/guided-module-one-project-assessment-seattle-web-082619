class Game
    def run
        Game.loading_screen
        puts `clear`
        Game.banner 
        puts "Welcome to the game"
        puts "What is your name?"
        user_name = STDIN.gets.chomp
        user = sign_or_log_in(user_name)
        puts `clear`
        Game.banner
        puts "Welcome #{user_name}! What would you like to do?"
        is_running = true
        while is_running == true
            puts "1. Interact with your Pokemon"
            puts "2. Catch pokemon"
            puts "3. Exit"
            input = STDIN.gets.chomp.to_i
            if input == 1
                puts `clear`
                Game.banner
                puts "Here are all your pokemon:"
                user.view_roster
                interacting_with_pokemon = true
                while interacting_with_pokemon == true
                    puts `clear`
                    Game.banner
                    puts "What would you like to do?" 
                    puts "1. Rename pokemon"
                    puts "2. Release pokemon"
                    puts "3. Workout with pokemon"
                    puts "4. Go back"
                    input_2 = STDIN.gets.chomp.to_i
                    if input_2 == 1
                        user.rename_pokemon
                    elsif input_2 == 2
                        user.release_pokemon
                    elsif input_2 == 3
                        user.workout_pokemon
                        
                    elsif input_2 == 4
                        interacting_with_pokemon = false 
                        puts `clear`
                        Game.banner
                    else 
                        puts "Try again."
                    end
                end
            elsif input == 2
                puts `clear`
                Game.banner
                random_pokemon = user.encounter_random_pokemon
                puts "A wild #{random_pokemon.name} appeared!"
                user.capture_pokemon(random_pokemon)
                puts "Congratulations! You have caught #{random_pokemon.name}"
                puts "#{random_pokemon.name} has been added to your roster."
                
            elsif input == 3
                is_running = false
                puts `clear`
                Game.banner
                Game.loading_screen
                puts "Thanks for playing #{user_name}!"
                5.times {puts}
            else
                puts `clear`
                Game.banner
                puts "Try again"
            end
        end
    end

    def sign_or_log_in(user_name)
        User.all.find_or_create_by(name: user_name)
    end

    def self.banner
        logo = File.open("./lib/ascii/pokemon_logo.txt")
        puts logo.read
        logo.close
    end

    def self.loading_screen
        3.times do |dance|
            puts `clear`
            Game.banner
            Game.dance_left
            sleep 0.75
            puts `clear`
            Game.banner
            Game.dance_right 
            sleep 0.75
        end
    end

    def self.dance_right
        pika_right = File.open("./lib/ascii/pikachu_right.txt")
        puts pika_right.read
        pika_right.close
    end

    def self.dance_left
        pika_left = File.open("./lib/ascii/pikachu_left.txt")
        puts pika_left.read
        pika_left.close
    end

    
    def self.clear_and_banner
        
    end
end

# today's goals:
#     - code to create files in lib of all pokemon ascii art
#         - lib
#             -ascii
#                 -pokemon
#                     - 1. center position #with road
#                     - 2. up #with road-offset
#         -save original file as text
#         -create an array of objects
#         -write each object to a file
#     -clean up code


# tomorrow's goals:
# release pokemon
# delete user?
# throw pokeball with 50% catch rate
# pokemon attempts to run after every turn with 25% success rate

# then:
# pokemon are able to attack
# being hit by an attack ends the battle
# the defending pokemon can attempt to dodge with 50% chance of success



