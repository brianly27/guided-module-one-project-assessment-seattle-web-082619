class CreatePokemonTable < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :pokemon_number
    end
  end
end
