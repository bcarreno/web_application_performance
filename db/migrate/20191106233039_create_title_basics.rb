class CreateTitleBasics < ActiveRecord::Migration[5.2]
  def change
    create_table :title_basics do |t|
      t.string :tconst
      t.string :title_type
      t.text :primary_title
      t.text :original_title
      t.text :is_adult
      t.integer :start_year
      t.integer :end_year
      t.integer :runtime_minutes
      t.string :genres
    end
    add_index :title_basics, :tconst
  end
end
