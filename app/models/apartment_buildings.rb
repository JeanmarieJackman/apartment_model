require 'pry'
require './app/models/landlord.rb'
require './app/models/tenant.rb'
require './app/models/pet.rb'

class ApartmentBuilding
    attr_accessor :building_name, :address

    @@all = []

    def initialize(building_name, address)
        @building_name = building_name
        @address = address
        # @landlord = landlord - landlord belongs to apartment_building.
        @@all << self
    end

    def self.all
        @@all
    end

    #I made changes to self.tenants.  When you iterate through ApartmentBuilding,
    #you are iterating through each instance of apartment building. 
    #So I think you want to iterate through Tenent.all instead of
    #ApartmentBuilding.all

    def tenants
        Tenant.all.select do |tenant|
            tenant.apartment_building == self
        end
    end

    # Changed the method to Landlord because each ApartmentBuilding 
    # only has one landlord. 
    def landlord
        Landlord.all.select do |landlord|
            landlord.apartment_building == self
        end
    end

    # The below method didn't work because you have to go to Landlord for the 
    # apartment_building

    # def landlords
    #     tenants.map do |tenant|
    #         tenant.landlord
    #     end
    # end

    def tenant_paying_highest_rent
        tenants.max_by do |tenant|
            tenant.rent 
        end
    end

    def tenants_rent
        tenants.reduce(0) do |sum, tenant|
            sum + tenant.rent
        end
    end

    def tenants_under_21
        tenants.select do |tenant|
            tenant.age < 21
        end
    end

    # tenants_who_own_pets doesn't work becase relationship isn't set up that way. 
    # We have to go to Pets for info on owner. 

    # def tenants_who_own_pets
    #     tenants.select do |tenant|
    #         tenant.pet = true
    #     end
    # end

    # We have to go through Pets to get a list of tenants, then compare tenants to 
    # building tenants. This method is not working yet. 
    def tenants_who_own_pets
        Pet.all.select do |pet|
            pet.tenant.include?(self.tenants)
        end
    end

end
