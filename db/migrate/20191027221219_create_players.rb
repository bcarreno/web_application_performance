class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :nconst
      t.text :primary_name
      t.integer :birth_year
      t.integer :death_year
      t.text :primary_profession
      t.text :known_for_titles
    end
  end
end
