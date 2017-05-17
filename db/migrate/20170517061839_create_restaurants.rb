class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :website
      t.text :yelp_link
      t.integer :contributor_id

      t.timestamps

    end
  end
end
