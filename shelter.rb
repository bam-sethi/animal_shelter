class Shelter

  attr_reader :name
  attr_accessor :animals, :clients

  def initialize name
    @name = name
    @animals = []
    @clients = []
  end

  def client_details(name, age, gender, no_of_pets)
  clients << Clients.new(name, age, gender, no_of_pets)
  end

  def add_animal(names, breed, age, gender, favourite_toy)
  animals << Animals.new(names, breed, age, gender, favourite_toy)
  end
end