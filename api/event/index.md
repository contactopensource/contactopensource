# event


An event is a generic concept of anything that happens over time.


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

  * start_timestamp_local: timestamp - example: 2020-01-01T00:00:00 New York City

  * stop_timestamp_local: timestamp - example: 2020-01-01T00:00:00 New York City

  * start_timestamp_utc: timestamp - example: 2020-01-01T00:00:00±00:00±00:00

  * stop_timestamp_utc: timestamp - example: 2020-01-01T00:00:00±00:00±00:00

  * duration_as_seconds: count - example: 3600 seconds (1 hour)

  * recurring: boolean - example: true means the event is recurring

  * recurring_description: text - example: This event happens every Saturday at noon in New York City

