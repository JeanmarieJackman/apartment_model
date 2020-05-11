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

# * Landlord#tenants
#     * Returns an array of all the tenants renting from a Landlord

# * Landlord#apartments
#     * Returns an array of all the apartment buildings owned by a Landlord

# * Landlord#create_lease
#     * Given the arguments of name, rent, and apartment_building, 
#     creates a new tenant renting from that landlord

# * Landlord#tenants_rents
#     * Returns an array of hashes for that Landlords tenant's 
#     names and monthly rent amounts

end
binding.pry