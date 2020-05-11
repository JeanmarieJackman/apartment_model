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

**TENANT**

  * Tenant.all
    * Returns an array of all the tenants

**APARTMENTBUILDING**

  * ApartmentBuilding.all
    * Returns an array of all the apartment buildings

  * ApartmentBuilding#tenant
    * Returns an array of all tenants in an apartment building

