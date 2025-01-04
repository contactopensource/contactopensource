# tz_database_2024b

The tz database for time zones of the world.


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

  * country_code: string(2) (index) - example: "US" means United States.

  * country_id: country.id

  * latitude_as_iso_6709: iso_6709

  * latitude_as_decimal_degrees: decimal_degrees (index)

  * longitude_as_iso_6709: text

  * longitude_as_decimal_degrees: decimal_degrees (index)

  * name: text (index)

  * comment: text

