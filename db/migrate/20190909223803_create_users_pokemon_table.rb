class CreateUsersPokemonTable < ActiveRecord::Migration[6.0]
  def change
    create_table :user_pokemons do |t|
      t.string :nickname
      t.integer :user_id
      t.integer :pokemon_id
    end 
  end
end
