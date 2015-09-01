require_relative 'shelter'
require_relative 'clients'
require_relative 'animals'

shelter = Shelter.new('Gazza\'s Shelter')

#define method called menu/ clear the screen/ add some deco/ give some options
def menu 
  puts `clear`
  puts '*' * 52
  puts "Welcome to Gazza\'s Shelter!\n".center 50
  puts '*' * 52
  puts '1: Add a client'
  puts '2: Add an animal for adoption'
  puts '3: List animals in shelter'
  puts '4: List registered clients'
  puts 'q: Quit'
  print '-->'
  gets.chomp
end

response = menu

while response.downcase != 'q'
  case response

  when '1' #add a client
    puts 'What is the clients name?'
    name = gets.chomp
    puts 'What is the clients age?'
    age = gets.to_i
    puts 'What is the clients gender?'
    gender = gets.chomp
    puts 'How many pets does the client have?'
    no_of_pets = gets.to_i

    shelter.client_details(name, age, gender, no_of_pets).inspect
    gets

  when '2' #Add an animal for adoption
    puts 'What is their name?'
    names = gets.chomp
    puts 'What animal would u like to add to Gazza\'s Shelter?'
    breed = gets.chomp
    puts 'What is their age?'
    animal_age = gets.to_i
    puts "What is their gender?"
    animal_gender = gets.chomp
    puts "What is their favourite toy?"
    favourite_toy = gets.chomp

    shelter.add_animal(names, breed, age, gender, favourite_toy)

  when '3'
  when '4'
  end
  response = menu
end
