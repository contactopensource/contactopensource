# postal_contact

A postal address, such as for mail delivery, or map routes, or demographics.

Attributes:

* freeform : text -- example: "123 Main, San Fran, Cali".

* country_text : string -- example: "US" is United States. A country means a generally recognized country, or in some cases, like Hong Kong, an area of quasi-national administrative status that has a designated country code under ISO 3166-1. If possible, aim for ISO 3166-1.

* country_subdivision_text : string -- example: "CA" is for U.S. California ~ a.k.a. United States state, Canada province, etc. . If possible, aim for ISO 3166-2.

* district_text : string -- example: "Kashgar Prefecture" in China. A district is typically smaller than a region, and typically larger than a city, in countries that use such an additional layer in postal addressing, for example, prefectures in China.

* locality_text : string -- example: "San Francisco" ~ a.k.a. city, town, etc.

* locality_division_text : string -- example: "District 1" in San Francisco is the
  city supervisor area that includes the Richmond neighborhood and Golden Gate
  Park. For example, district is an official sub-city features present in
  countries where such an additional administrative layer is used in postal
  addressing, or where such features are commonly referred to in local parlance.
  Examples include city districts in Brazil and Chile and arrondissements in
  France.

* neighborhood_text : string -- example: "The Mission" in San Francisco. ~ a.k.a. city area, town zone, etc. Colloquial sub-city features. Often referred to in local parlance. Unlike locality features, these typically lack official status, and also may lack universally agreed-upon boundaries.

* postal_code_text : string -- example: "94101" is San Francisco downtown area (a.k.a. United States ZIP code, Canada mail  routing number, etc.). Postal codes used in country-specific national addressing systems.

* street_address_text : string -- example: "123 Main Street"

* premise_address_text : string -- example: "Apartment A1" ~ a.k.a. room name, box number, etc.

* global_location_number_text : string -- example: TODO ~ see: https://schema.org/globalLocationNumber https://en.wikipedia.org/wiki/
