require 'pry'
require './app/models/apartment_buildings.rb'
require './app/models/landlord.rb'
require './app/models/tenant.rb'


class Pet
    attr_accessor :pet_name, :species, :tenant

    @@all = []

    def initialize(pet_name, species, tenant)
        @pet_name = pet_name
        @species = species
        @tenant = tenant
        @@all << self
    end

    def self.all
        @@all
    end
end
# binding.pry
