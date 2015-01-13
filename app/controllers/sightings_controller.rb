class SightingsController < ApplicationController
  
  def index
    @sighting = Sighting.all
    render('sighting/index.html.erb')
  end

  def new 
    specie = Specie.find(params[:specie_id])
    @sighting = specie.sightings.new  
    render('sightings/new.html.erb')
  end

  def create
  	@sighting = Sighting.new(:date => params[:date], :specie_id => params[:specie_id])
    

    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

def edit
  @sighting = Sighting.find(params[:id])
  #render('contacts/edit.html.erb') 
end

def update
    @sighting = Sighting.find(params[:id])
    @region = Region.find(params[:id])
    specie_id = @sighting.specie_id
    @specie = Specie.where(:id => specie_id).first 
    @sighting.update(:date =>params[:date], :specie_id => @specie.id, :region_id => @region.id)
    render ('species/index.html.erb')
end

end


