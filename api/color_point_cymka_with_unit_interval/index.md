# color_point_cymka_with_unit_interval


Color point CYMKA (cyan, yellow, magenta, black, alpha) with unit interval


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

  * cyan: unit_interval - example: 0.0 means no cyan

  * yellow: unit_interval - example: 0.5 means half yellow

  * magenta: unit_interval - example: 1.0 means full magenta

  * black: unit_interval - example: 0.1 means slightly black

  * alpha: unit_interval - example: 0.5 means half transparent

