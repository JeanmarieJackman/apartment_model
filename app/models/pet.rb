require 'pry'
require './app/models/apartment_buildings.rb'
require './app/models/landlord.rb'
require './app/models/tenant.rb'


class Pet
    attr_accessor :pet_name, :species

    @@all = []

    def initialize(pet_name, species)
        @pet_name = name
        @species = species
        @@all << self
    end

    def self.all
        @@all
    end
end
binding.pry
