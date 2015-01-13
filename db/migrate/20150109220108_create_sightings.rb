class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
    	t.date :name #later migration removed this and added date
    	t.float :latitude #entered but do not seem too important so not used
    	t.float :longitude #same as above
    	t.belongs_to :specie
    	t.belongs_to :region
    end
  end
end