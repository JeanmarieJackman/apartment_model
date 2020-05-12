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

end
# binding.pry