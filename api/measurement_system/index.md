# measurement_system

A measurement system, such as of distance, or time, etc.

Examples:
  * the metric measurement system vs the imperial measurement system
  * the Gregorian calendar vs the Julian calendar


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

  * key: string (index) - example: "metric" or "imperial"

  * formal_name: string (index) - example: "the metric measurement system" or "the imperial measurement system"

