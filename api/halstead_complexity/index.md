# halstead_complexity


Halstead complexity


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

  * volume_actual: numeric(7,2)

  * volume_target: numeric(7,2)

  * volume_ratio: numeric(7,2)

  * volume_unit: text

  * volume_description: text

  * difficulty_actual: numeric(7,2)

  * difficulty_target: numeric(7,2)

  * difficulty_ratio: numeric(7,2)

  * difficulty_unit: text

  * difficulty_description: text

  * effort_actual: numeric(7,2)

  * effort_target: numeric(7,2)

  * effort_ratio: numeric(7,2)

  * effort_unit: numeric(7,2)

  * effort_description: numeric(7,2)

