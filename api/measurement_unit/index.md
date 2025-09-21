# measurement_unit


A measurement unit, such as metre, second, metre/second, etc.


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

Main:

  * name: text - example: second

  * symbol: text - example: s

  * measurement_system_id: measurement_system.id - example: metric

Ratio:

  * numerator: measurement_unit.id - example: metre

  * denominator: measurement_unit.id - example: second

