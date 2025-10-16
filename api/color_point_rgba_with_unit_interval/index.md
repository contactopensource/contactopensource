# color_point_rgba_with_unit_interval


Color point RGBA (red, green, blue, alpha) with unit interval


## Attributes

meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * deleted_at: timestamp_utc_usec (index)

  * deleted_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

  * tagging: string (index) - example: The tagging "red green blue" means a list of three tags ["red", "green", "blue"]

Main:

  * red: unit_interval - example: 0.0 means no red

  * green: unit_interval - example: 0.5 means half green

  * blue: unit_interval - example: 1.0 means full blue

  * alpha: unit_interval - example: 0.5 means half transparent

