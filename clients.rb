require_relative 'shelter'
require_relative 'clients'
require_relative 'animals'

class Clients



def list_animals list
  animals.show.each_with_index {|animal, index| puts "#{index}: #{animal}"}
end

def let_animals toadopt
  animals << animal
end

end