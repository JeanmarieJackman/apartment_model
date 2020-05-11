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

**TENANT**

  * Tenant.all
    * Returns an array of all the tenants

  * Tenant.rent
    * Returns an integer that is the total rent paid by all the tenants

  * Tenant#my_rent
    * Returns an integer for that tenant's rent

  * Tenant#my_lease
    * Returns a string for that tenant's apartment building and rent

**APARTMENTBUILDING**

  * ApartmentBuilding.all
    * Returns an array of all the apartment buildings

  * ApartmentBuilding#tenants
    * Returns an array of all tenants in an apartment building

 * ApartmentBuilding#rents
    * Returns an array of all the rent prices being paid in the building

  * ApartmentBuilding#tenants_under_21
    * Returns an array of tenants under age 21




