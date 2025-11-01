# dora_metrics_kit

DORA metrics kit


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

  * deployment_frequency_actual: numeric(7,2)

  * deployment_frequency_target: numeric(7,2)

  * deployment_frequency_ratio: numeric(7,2)

  * deployment_frequency_unit: text

  * deployment_frequency_description: text

  * lead_time_for_changes_actual: numeric(7,2)

  * lead_time_for_changes_target: numeric(7,2)

  * lead_time_for_changes_ratio: numeric(7,2)

  * lead_time_for_changes_unit: text

  * lead_time_for_changes_description: text

  * change_failure_rate_actual: numeric(7,2)

  * change_failure_rate_target: numeric(7,2)

  * change_failure_rate_ratio: numeric(7,2)

  * change_failure_rate_unit: text

  * change_failure_rate_description: text

  * mean_time_to_recovery_actual: numeric(7,2)

  * mean_time_to_recovery_target: numeric(7,2)

  * mean_time_to_recovery_ratio: numeric(7,2)

  * mean_time_to_recovery_unit: text

  * mean_time_to_recovery_description: text

