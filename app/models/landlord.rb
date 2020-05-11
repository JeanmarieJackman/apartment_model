require 'pry'

class Landlord
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def tenants
        Tenant.all.select do |tenant|
            tenant.landlord == self
        end
    end

    def apartments
        tenants.map do |tenant|
            tenant.apartment_building
        end
    end

    def create_lease(name, age, rent, apartment_building)
        Tenant.new(name, age, rent, self, apartment_building)
    end

    def tenants_and_rents

    end

end
binding.pry

# **LANDLORD**

# * Landlord.all
#     * Returns an array of all the Landlords

# * Landlord#tenants
#     * Returns an array of all the tenants renting from a Landlord

# * Landlord#apartments
#     * Returns an array of all the apartment buildings owned by a Landlord

# * Landlord#create_lease
#     * Given the arguments of name, age, rent, and apartment_building, creates a new tenant renting from that landlord

#   * Landlord#tenants_and_rents
#     * Returns an array of arrays for that Landlord's tenants' names and monthly rent amounts
