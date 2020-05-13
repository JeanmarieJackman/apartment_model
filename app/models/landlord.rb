require 'pry'
require './app/models/apartment_buildings.rb'
require './app/models/tenant.rb'
require './app/models/pet.rb'


class Landlord
    attr_accessor :name, :apartment_building

    @@all = []

    def initialize(name, apartment_building)
        @name = name
        @apartment_building = apartment_building
        @@all << self
    end

    def self.all
        @@all
    end

    def tenants
        #get apartment_building from landlord
        #once we have the apartment building, get the tenants from that building.
        ApartmentBuilding.all.select do |ab|
            self.apartment_building == ab.tenants.apartment_building
        end
    end

    def apartments
        tenants.map do |tenant|
            tenant.apartment_building
        end
    end

    def create_lease(name, age, rent, apartment_building)
        Tenant.new(name, age, rent, apartment_building)
    end

end

