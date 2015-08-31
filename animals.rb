require_relative 'shelter'
require_relative 'clients'
require_relative 'animals'

class Animals



attr_accessor :name, :age, :gender, :number_of_pets

@@count = 0

def initialize ( name, age, gender, number_of_pets)
    @name = name
  @age = age
  @gender = gender
  @number_of_pets = number_of_pets
@@count += 1 
  end

def add_animal (name, age, gender, number_of_pets)
   animals << Animals.new(name, age, gender, number_of_pets)    
   end



end