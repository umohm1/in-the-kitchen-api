class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.text :directions
      t.integer :cook_time

      t.timestamps
    end
  end
end
