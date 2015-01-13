class RegionsController < ApplicationController
  
  def new 
    @region = Region.new  
    @sighting = Sighting.find(params[:sighting_id])
    specie_id = @sighting.specie_id
    @specie = Specie.where(:id => specie_id).first 
    render('regions/new.html.erb')
  end

  def create
  	@region = Region.new(:name=> params[:name])
    @region.save
    @sighting = Sighting.find(params[:sighting_id])
    specie_id = @sighting.specie_id
    @specie = Specie.where(:id => specie_id).first
    @sighting.update_ids(@specie.id, @region.id)
    render('regions/success.html.erb')
  end

end
