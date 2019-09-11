

    def run
        puts "Welcome to the game"
        puts "What is your name?"
        user_name = STDIN.gets.chomp
        user = sign_or_log_in(user_name)
        puts "Welcome #{user_name}! What would you like to do?"

        is_running = true
        while is_running == true
            puts "1. View roster"
            puts "2. Catch pokemon"
            puts "3. Exit"
            puts
            input = STDIN.gets.chomp.to_i
            #display options: 1) view roster, 2) catch pokemon, 3) exit
            if input == 1
                user.view_roster
            elsif input == 2
                pokemon = user.encounter_random_pokemon
                puts "A wild #{pokemon.name} appeared!"

                
                user.capture_pokemon(pokemon)
                puts "Congratulations! You have caught #{pokemon.name}"
                puts "#{pokemon.name} has been added to your roster."
                user.pokemons << pokemon

            elsif input == 3
                is_running = false
                puts "Thanks for playing!"
            else
                puts "Try again"
            end
            #input = gets.chomp
            #if 1, view roster
            #if 2, catch pokemon
            #if 3, is_running = false, puts "goodbye"
            #else, try again
        end
    end

    def sign_or_log_in(user_name)
        User.all.find_or_create_by(name: user_name)
    end





