require 'pry'

class Pet
    attr_accessor :pet_name, :species

    @@all = []

    def initialize(pet_name, species)
        @pet_name = pet_name
        @species = species
        @@all << self
    end

    def self.all
        @@all
    end
end
# binding.pry
