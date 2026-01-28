# measurement_unit


A measurement unit, such as metre, second, metre/second, etc.


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

  * measurement_system_id: measurement_system.id - example: UCUM

  * code: string (index) - example: s

  * name: text - example: second

  * name_phonetic: text - example: ˈsɛkənd

  * synonyms: text - example: seconds

  * category: text - example: Clinical

  * property: text - example: Time

  * guidance: text - example: todo

