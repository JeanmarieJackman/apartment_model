### Domain Model

* Landlord can have many tenants.
* Tenants can live in one apartment building and have only one landlord.
* Apartment buildings can have many tenants.

### Class Attributes and Methods

**LANDLORD**

* Landlord.all
    * Returns an array of all the Landlords

* Landlord#tenants
    * Returns an array of all the tenants renting from a Landlord

* Landlord#apartments
    * Returns an array of all the apartment buildings owned by a Landlord

* Landlord#create_lease
    * Given the arguments of name, age, rent, and apartment_building, creates a new tenant renting from that landlord

  * Landlord#tenants_and_rents
    * Returns an array of arrays for that Landlord's tenants' names and monthly rent amounts

**TENANT**

  * Tenant.all
    * Returns an array of all the tenants

  * Tenant.rent
    * Returns an integer that is the total rent paid by all the tenants

**APARTMENTBUILDING**

  * ApartmentBuilding.all
    * Returns an array of all the apartment buildings

  * ApartmentBuilding#tenants
    * Returns an array of all tenants in an apartment building

  * ApartmentBuilding#landlords
    * Returns an array of all landlords who have tenants in an apartment building.

  * ApartmentBuilding#tenants_rent
    * Returns an integer that is the monthly rent paid by all tenants in an apartment building

  * ApartmentBuilding#tenant_paying_highest_rent
    * Returns and instance of the tenant paying highest rent in an apartment building

  * ApartmentBuilding#tenants_under_21
    * Returns an array of the names of all tenants under age 21 in an apartment building




