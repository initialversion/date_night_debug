class AddDateNightCountToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :date_nights_count, :integer
  end
end
