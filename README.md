### Domain Model

* Landlord can have many tenants.
* Tenants can live in one apartment building and have only one landlord.
* Apartment buildings can have many tenants.

### Class Attributes and Methods

**LANDLORD**

* Landlord.all
    * Returns an array of all the Landlords

* Landlord#apartments
    * Returns an array of all the apartment buildings owned by a Landlord

* Landlord#