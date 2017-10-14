class RemoveDirectionsFromRecipes < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :directions, :string
  end
end
