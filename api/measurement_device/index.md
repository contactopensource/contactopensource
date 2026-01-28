# measurement_device


A measurement device, such as a generic ruler or specific machine.


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

  * name: text - example: TODO

  * name_phonetic: text - example: TODO

  * stock_keeping_unit_id: stock_keeping_unit.id - example: TODO

