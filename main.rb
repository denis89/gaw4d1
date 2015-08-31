require_relative 'shelter'
require_relative 'clients'
require_relative 'animals'

#attr_accessor :name, :#breed, :age, :gender#, :favorite_toys
weShelt = Shelter.new("WeShelt")


def list_animals weShelt
  weShelt.animals.each_with_index {|animals, index| puts "#{index}: #{animals}"}
end

def menu
  puts `clear`
  puts '*' * 52
  puts "* Welcome to the Animal Shelter! *".center 50
  puts '*' * 52
  puts '1: See list of available animals'
  puts '2: Give up animal for adoption'
  puts '3: List animals in the shelter(Staff only)'
  puts '4: List the registered clients (Staff only)'
  puts 'q: Quit'
  print '-->'
  gets.chomp
end

response = menu

while response.downcase != 'q'
  case response
  when '1' # List all animals
    puts 'Here are all of the animals: '
    list_animals(weShelt)
    gets
  when '2' # Adoption
    puts 'Adoption: name?'
    name = gets.chomp
    puts 'age?'
    age = gets.chomp
    puts ' gender?'
    gender = gets.chomp 
    puts 'number_of_pets ?'
    num = gets.chomp
    newAnimal = Animals.new(name, age, gender, num) 
    weShelt.add_animal(name, age, gender, num)
    puts " We will take care of your #{newAnimal.name}"
    gets

  when '3' # Add a passenger to a flight
    puts 'What is the passengers name?'
    name = gets.chomp
    passenger = Passenger.new(name)
    # List flights so it can be selected
    puts "What flight do you want #{name} to be added to"
    list_flights(airport)
    flight_number = gets.to_i
    flight = airport.flights[flight_number]
    flight.add_passenger(passenger)
    puts "#{passenger.name} has been added to #{flight}"
    gets
  when '4' # List passengers on a flight
    puts 'What flight do you want to list the passengers from ?'
    airport_flights(airport)
    # List the flights
    # Choose a flight.
    flight_number = gets.to_i
    flight = airport.flights[flight_number]
    # Loop through the passengers array in a nice way.
    puts 'The passengers for this flight are: '
  end

  response = menu

end

def list_clients clients
  clients.each_with_index { |client, index|
    puts "#{client} #{index}:" }
end
