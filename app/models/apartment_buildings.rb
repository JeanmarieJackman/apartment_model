require 'pry'

class ApartmentBuilding
    attr_accessor :building_name, :address, :landlord

    @@all = []

    def initialize(building_name, address, landlord)
        @building_name = building_name
        @address = address
        @landlord = landlord
        @@all << self
    end

    def self.all
        @@all
    end

    def tenants
        ApartmentBuilding.all.select do |tenant|
            tenant.building_name == self
        end
    end

    def landlords
        tenants.map do |tenant|
            tenant.landlord
        end
    end
 
end
binding.pry

# **APARTMENTBUILDING**

#   * ApartmentBuilding.all
#     * Returns an array of all the apartment buildings

#   * ApartmentBuilding#tenants
#     * Returns an array of all tenants in an apartment building

#   * ApartmentBuilding#landlords
#     * Returns an array of all landlords who have tenants in an apartment building.

#   * ApartmentBuilding#tenants_rent
#     * Returns an integer that is the monthly rent paid by all tenants in an apartment building

#   * ApartmentBuilding#tenant_paying_highest_rent
#     * Returns and instance of the tenant paying highest rent in an apartment building

#   * ApartmentBuilding#tenants_under_21
#     * Returns an array of the names of all tenants under age 21 in an apartment building