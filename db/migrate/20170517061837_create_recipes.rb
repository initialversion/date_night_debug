class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :ingredients
      t.text :recipe
      t.string :picture
      t.integer :contributor_id

      t.timestamps

    end
  end
end
