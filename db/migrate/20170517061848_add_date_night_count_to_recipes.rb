class AddDateNightCountToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :date_nights_count, :integer
  end
end
