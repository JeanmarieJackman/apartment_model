require 'pry'
require './app/models/pet.rb'

class Tenant
    attr_accessor :name, :age, :rent, :landlord, :apartment_building

    @@all = []

    def initialize(name, age, rent, landlord, apartment_building)
        @name = name
        @age = age
        @rent = rent
        @landlord = landlord
        @apartment_building = apartment_building
        @@all << self
    end

    def self.all
        @@all
    end

    def self.total_rents
        self.all.reduce(0) do |sum, tenant|
            sum + tenant.rent
        end
    end

    def get_new_pet(pet_name, species)
        Pet.new(pet_name, species)
    end

end
binding.pry
