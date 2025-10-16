# earned_value_management

Earned Value Management (EVM)


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

  * planned_value: numeric(7,2)

  * earned_value: numeric(7,2)

  * actual_cost: numeric(7,2)

  * cost_variance: numeric(7,2)

  * cost_variance_ratio: numeric(7,2)

  * cost_performance_index: numeric(7,2)

  * schedule_variance: numeric(7,2)

  * schedule_variance_ratio: numeric(7,2)

  * schedule_performance_index: numeric(7,2)

