class SpeciesController < ApplicationController
  
  def index
    @species = Specie.all
    render('species/index.html.erb')
  end

  def new 
    @specie = Specie.new  #we include this variable here so that if there are errors in the submission, rails knows what specie to attribute the errors to (even though this specie is not yet saved.)
    render('species/new.html.erb')
  end

  def create
  	@specie = Specie.new(params[:specie])

    if @specie.save
      render('species/success.html.erb')
    else
      render('species/new.html.erb')
    end
  end

  def show
    @specie = Specie.find(params[:id]) #ie, the specie when this action occurs is the specie matching the id that was entered (correponding to the ":id" in the route)
    render('species/show.html.erb')
  end

  def edit #NOT USED
    @specie = Specie.find(params[:id])
    render('species/edit.html.erb') 
  end

  def update #NOT USED
    @specie = specie.find(params[:id])
    if @specie.update(params[:id])
      render('species/success.html.erb')
    else
      render('species/edit.html.erb')
    end
  end

 def destroy #NOT USED
    @specie = specie.find(params[:id])
    @specie.destroy
    render('species/destroy.html.erb')
 end

end