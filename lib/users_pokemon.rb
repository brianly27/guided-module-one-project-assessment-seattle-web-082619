class User_Pokemon < ActiveRecord::Base
    belongs_to :pokemons
    belongs_to :users


end
