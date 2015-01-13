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



end


