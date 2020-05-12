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

end
# binding.pry

