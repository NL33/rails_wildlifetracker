class AddDateToSighting < ActiveRecord::Migration
  def change
    add_column :sightings, :date, :date
  end
end
