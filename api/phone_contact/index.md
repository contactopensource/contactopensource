# phone_contact


See https://en.wikipedia.org/wiki/E.164


## Attributes

meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * retired_at: timestamp_utc_usec (index)

  * retired_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

  * tagging: string (index) - example: The tagging "red green blue" means a list of three tags ["red", "green", "blue"]

card:

  * name: string(50) (index) - example: Alice Anderson

  * subname: string(50) (index) - example: @alice

  * slug: string(72) (index) - example: alice-anderson

  * summary: string(72)

  * description: text

  * disambiguation: text

  * sign: string(1) (index) - example: a green check mark emoji to indicate that this instance is complete.

  * kind: string (index) - example: a "Pet" resource can be a kind of "Dog", "Cat", "Bird", etc.

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

  * label: text - example: mobile

  * number_text: text (index) - example: 1 (415) 555-0000

Parts:

  * e164_text: string(15) (index) - example: 14155550000 means United States country code, San Francisco area code, etc.

  * e164_country_code: string(3) (index) - example: 1 means United States

  * e164_national_destination_code: string(13) (index) - example: 415 means San Francisco area code, within United States.

  * e164_group_identification_code: string(4) - example: TODO

  * e164_trial_identification_code: string(3) - example: TODO

  * e164_subscriber_number: string(14) - example: 5550000 means a local number, without country code or national destination code

