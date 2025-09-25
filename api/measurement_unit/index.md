# measurement_unit


A measurement unit, such as metre, second, metre/second, etc.


## Attributes

Meta:

  * id: uuid (index)

  * sign: string (index) - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp (index)

  * created_by: url (index)

  * updated_at: timestamp (index)

  * updated_by: url (index)

  * deleted_at: timestamp (index)

  * deleted_by: url (index)

  * locale_id: locale.id (index) - example: the id of locale "English - United States".

Main:

  * name: text - example: second

  * symbol: text - example: s

  * measurement_system_id: measurement_system.id - example: metric

Ratio:

  * numerator: measurement_unit.id - example: metre

  * denominator: measurement_unit.id - example: second

