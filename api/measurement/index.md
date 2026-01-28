# measurement


A measurement, such as 1 metre, 2 seconds, 3 metres/second, etc.


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

Main:

  * timestamp_utc_usec: timestamp_utc_usec - example: 2026-01-28 19:03:57+00:00

  * measurement_unit_id: measurement_unit.id - example: UCUM

  * measurement_device_id: measurement_device.id - example: TODO

  * value: TODO - example: TODO

