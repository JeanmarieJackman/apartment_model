require 'pry'

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

end
binding.pry
