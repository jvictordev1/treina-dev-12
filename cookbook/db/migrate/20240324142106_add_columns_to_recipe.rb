class AddColumnsToRecipe < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :cuisine, :string
    add_column :recipes, :preparation_method, :string
    add_column :recipes, :preparation_time, :integer
  end
end
