Rails.application.routes.draw do
#Species
  match('/', {:via => :get, :to => 'species#index'}) 
  match('species', {:via => :get, :to => 'species#index'}) 
  match('species/new', {:via => :get, :to => 'species#new'})  
  match('species', {:via => :post, :to => 'species#create'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  #match('species/:id/edit', {:via => :get, :to => 'species#edit'}) #Not used. This and others included for illustration
  #match('species/:id', {:via => [:patch, :put], :to => 'species#update'}) #Not used.
  #match('species/:id', {:via => :delete, :to => 'species#destroy'}) #Not used.
#Sightings
  match('/species/:specie_id/sightings/new', {:via => :get, :to => 'sightings#new'})
  match('/species/:specie_id/sightings', {:via => :post, :to => 'sightings#create'})

  #match('species/:specie_id/sightings/:sighting_id/edit', {:via => :get, :to => 'sightings#edit'}) #Not used
  #match('/sightings/:sighting_id', {:via => [:patch, :put], :to => 'sightings#update'}) #not used

#Regions
  match('/:specie_id/:sighting_id/regions/new', {:via => :get, :to => 'regions#new'})
  match('/:sighting_id/regions', {:via => :post, :to => 'regions#create'})
end
