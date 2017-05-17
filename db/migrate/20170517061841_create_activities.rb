class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :location
      t.string :name
      t.text :description
      t.string :website
      t.text :yelp_link
      t.integer :contributor_id

      t.timestamps

    end
  end
end
