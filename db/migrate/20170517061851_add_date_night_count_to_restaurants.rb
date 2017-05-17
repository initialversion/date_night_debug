class AddDateNightCountToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :date_nights_count, :integer
  end
end
