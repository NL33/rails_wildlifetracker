class Sighting < ActiveRecord::Base
	validates :date, :presence => true

	belongs_to :specie
	belongs_to :region

def update_ids(specie_id, region_id)
  self.update({:specie_id => specie_id, :region_id => region_id })
end

def show_region
	id = self.region_id
	region = Region.where({:id => id}).first
	region.name
end

end