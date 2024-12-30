# postal_contact

A postal address, such as for mail delivery, or map routes, or demographics.

Postal address formats are different in different places, and unlike latitude and longitude coordinates, there is no simple mapping from an address to a location. 

https://wikipedia.org/wiki/Address


## Attributes

Meta:

  * id: bigint (index)

  * zid: uuid (index)

  * lock_version: int

  * created_at: timestamp

  * created_by: url

  * updated_at: timestamp

  * updated_by: url

  * retired_at: timestamp

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Card:

  * title: string(50) (index) - example: Alice Anderson

  * subtitle: string(50) (index) - example: @alice

  * summary: string - example: I am a doctor who helps treat children.

  * description: text - example: This text is a description and can be as long as you wish.

  * disambiguation: text - example: This text explains the difference between this item and others.

  * image_1024x1024_url: url

  * image_1024x1024_alt: text

  * emoji: text - example: 🚀

  * star_count: integer - example: 5 for the best rating

Main:

  * freeform: text - example: 123 Main, San Fran, Cali

  * country_text: text - example: "US" means United States

  * country_subdivision_text: text - example: CA means the United States subdivision of California

  * district_text: text - example: "Kashgar Prefecture" which is an area in China

  * locality_text: text - example: "San Francisco" is a city in California

  * locality_subdivision_text: text - example: "District 1" in San Francisco is the city supervisor area that includes the Richmond neighborhood and Golden Gate Park.

  * neighborhood_text: text - example: "Haight Ashbury" neighborhood in San Francisco

  * postal_code_text: text - example: "94101" means San Francisco downtown area

  * street_address_text: text - example: 123 Main Street

  * premise_address_text: text - example: Apartment A1

  * global_location_number_text: text - example: TODO

