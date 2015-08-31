require_relative 'shelter'
require_relative 'clients'
require_relative 'animals'

class Shelter
  attr_accessor :name, :animals

  def initialize name
    @name = name
    @animals = []
  end




def add_animal(name, age, gender,  number_of_pets)
  animals << Animals.new(name, age, gender, number_of_pets)

   end

   def to_s
  puts  "#{animals.name}  "
   end

end