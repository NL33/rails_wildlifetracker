class Sighting < ActiveRecord::Base
	validates :date, :presence => true

	belongs_to :specie
	belongs_to :region

	def update_ids(specie_id, region_id) #used in regions controller, create actions (when region created, sighting updated to include region and specie id)
	  self.update({:specie_id => specie_id, :region_id => region_id })
	end

	def show_region  #used for showing region associated with a sighting, e.g., at main index
		id = self.region_id
		region = Region.where({:id => id}).first
		region.name
	end

end