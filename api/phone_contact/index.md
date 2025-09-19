# phone_contact


See https://en.wikipedia.org/wiki/E.164


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

  * label: text - example: mobile

  * number_text: text (index) - example: 1 (415) 555-0000

Parts:

  * e164_text: string (index) - example: 14155550000 means United States country code, San Francisco area code, etc.

  * e164_country_code: string (index) - example: 1 means United States

  * e164_national_destination_code: string (index) - example: 415 means San Francisco area code, within United States.

  * e164_group_identification_code: string - example: TODO

  * e164_trial_identification_code: string - example: TODO

  * e164_subscriber_number: string - example: 5550000 means a local number, without country code or national destination code

