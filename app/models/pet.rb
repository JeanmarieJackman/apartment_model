class Pet
    attr_accessor :pet_name, :species, :tenant

    @@all = []

    def initialize(pet_name, species, tenant)
        @pet_name = pet_name
        @species = species
        @tenant = tenant
        @@all << self
    end

    def self.all
        @@all
    end

    def name_owner
        name_owner = @tenant
        name_owner
    end
end

