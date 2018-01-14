namespace :db do
  desc "add a set of heroes"
  task add_heroes: :environment do


  	names = [
  		'Mr. Nice', 'Narco', 'Bombasto',
  		'Celeritas', 'Magneta', 'RubberMan',
		'Dynama', 'Dr IQ', 'Magma', 'Tornado'
  	]

  	names.each do |name|
  		hero = Hero.find_by_name(name)
  		if hero
  			puts "found #{name}" 
  		else
  			puts "add #{name}" unless hero
  			Hero.create!({name: name})
  		end
  	end
  end

end
