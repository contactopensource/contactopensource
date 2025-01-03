# measurement_unit

A measurement unit, such as metre, gram, second


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

Main:

  * name: text - example: second

  * symbol: text - example: s

  * measurement_system_id: measurement_system.id - example: \"\"metric\""

