# geographic_area


Geographic area


## Attributes

Meta:

  * id: uuid (index)

  * sign: char - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp_utc_usec

  * created_by: url

  * updated_at: timestamp_utc_usec

  * updated_by: url

  * retired_at: timestamp_utc_usec

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

  * population_count: count

  * area_as_meter2: meter2

  * center_geographic_point: geographic_point

