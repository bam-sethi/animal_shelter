class Clients

  attr_accessor :clients, :name, :age, :gender, :no_of_pets

  def initialize name, age, gender, no_of_pets
    @name = name
    @age= age
    @gender = gender
    @no_of_pets = no_of_pets
    @clients = []
  end
  



end
