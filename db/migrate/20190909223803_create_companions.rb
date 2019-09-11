class CreateCompanions < ActiveRecord::Migration[6.0]
  def change
    create_table :companions do |t|
      t.string :nickname
      t.integer :user_id
      t.integer :pokemon_id
    end 
  end
end
