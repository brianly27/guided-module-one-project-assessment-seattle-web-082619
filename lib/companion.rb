class Companion < ActiveRecord::Base
   belongs_to :pokemon
   belongs_to :user

    def pokemon_name
        pokemon = Pokemon.all.select(:name).where(pokemon_number: self.pokemon_id)
        pokemon[0].name
    end
end
