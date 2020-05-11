require 'pry'

class ApartmentBuilding
    attr_accessor :address, :landlord

    @@all = []

    def initialize(address, landlord)
        @address = address
        @landlord = landlord
        @@all << self
    end

    def self.all
        @@all
    end
end
binding.pry
