# measurement_unit


A measurement unit, such as metre, second, metre/second, etc.


## Attributes

Meta:

  * id: uuid (index)

  * sign: char (index) - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * deleted_at: timestamp_utc_usec (index)

  * deleted_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

Main:

  * name: text - example: second

  * symbol: text - example: s

  * measurement_system_id: measurement_system.id - example: metric

Ratio:

  * numerator: measurement_unit.id - example: metre

  * denominator: measurement_unit.id - example: second

