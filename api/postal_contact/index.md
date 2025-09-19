# postal_contact


A postal address, such as for mail delivery, or map routes, or demographics.


## Attributes

Meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp

  * created_by: url

  * updated_at: timestamp

  * updated_by: url

  * retired_at: timestamp

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Card:

  * title: string (index) - example: Alice Anderson

  * subtitle: string (index) - example: @alice

  * summary: string - example: This text is a one-line summary, maximum 72 characters, for compatibility with terminal screens and many other systems.

  * description: text - example: This text is a description and can be as long as you wish.

  * disambiguation: text - example: This text explains the difference between this item and others.

  * avatar_image_400x400_url: url

  * avatar_image_400x400_alt: url

  * main_image_1080x1080_url: url

  * main_image_1080x1080_alt: text

  * main_image_1920x1080_url: url

  * main_image_1920x1080_alt: text

  * main_image_1080x1920_url: url

  * main_image_1080x1920_alt: text

  * emoji: text - example: 🚀

  * star_count: integer - example: 5 for the best rating

  * quick_response_code_id: quick_response_code.id - example: A quick-response code that is a URL that leads to this card.

  * universal_product_code_id: universal_product_code.id - example: A universal product code that is an id that leads to this card.

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

