class User < ActiveRecord::Base
    has_many :user_pokemons
    has_many :pokemons, through: :users

end
