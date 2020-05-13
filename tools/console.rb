require_relative '../config/environment.rb'

casa = ApartmentBuilding.new("Casa", 123)
suites = ApartmentBuilding.new("Suites", 122)
dumbo = ApartmentBuilding.new("DUMBO", 333)
the_park = ApartmentBuilding.new("The Park", 144)
downtown = ApartmentBuilding.new("Downtown", 555)

bob = Landlord.new("Bob", casa)
jim = Landlord.new("Jim", suites)
mary = Landlord.new("Mary", the_park)
tim = Landlord.new("Tim", downtown)

pepper = Pet.new("Pepper", "dog", anna) 
mowgli = Pet.new("Mowgli", "dog", jillian) 
jack = Pet.new("Jack", "dog", chloe) 
fronky = Pet.new("Fronky", "cat", kathy) 

anna = Tenant.new("Anna", 19, 2000, casa)
brad = Tenant.new("Brad", 36, 4000, casa)
jillian = Tenant.new("Jillian", 28, 1000, the_park)
chloe = Tenant.new("Chloe", 29, 1500, downtown)
kathy = Tenant.new("Kathy", 45, 900, suites)






binding.pry

0