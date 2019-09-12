

    def run
        puts `clear`
        puts "Welcome to the game"
        puts "What is your name?"
        user_name = STDIN.gets.chomp
        user = sign_or_log_in(user_name)
        puts `clear`
        puts "Welcome #{user_name}! What would you like to do?"

        is_running = true
        while is_running == true
            puts "1. View roster"
            puts "2. Catch pokemon"
            puts "3. Exit"
            input = STDIN.gets.chomp.to_i
            if input == 1
                puts `clear`
                puts "Here are all your pokemon:"
                user.view_roster
                interacting_with_pokemon = true
                while interacting_with_pokemon == true
                    puts 
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
                        
                    elsif input_2 == 4
                        interacting_with_pokemon = false 
                        puts `clear`
                    else 
                        puts "Try again."
                    end
                end
            elsif input == 2
                random_pokemon = user.encounter_random_pokemon
                puts "A wild #{random_pokemon.name} appeared!"

                user.capture_pokemon(random_pokemon)
                puts "Congratulations! You have caught #{random_pokemon.name}"
                puts "#{random_pokemon.name} has been added to your roster."
                

            elsif input == 3
                is_running = false
                puts `clear`
                puts "Thanks for playing!"
            else
                puts `clear`
                puts "Try again"
            end
        end
    end

    def sign_or_log_in(user_name)
        User.all.find_or_create_by(name: user_name)
    end


# tomorrow's goals:
# release pokemon
# delete user?
# throw pokeball with 50% catch rate
# pokemon attempts to run after every turn with 25% success rate

# then:
# pokemon are able to attack
# being hit by an attack ends the battle
# the defending pokemon can attempt to dodge with 50% chance of success



