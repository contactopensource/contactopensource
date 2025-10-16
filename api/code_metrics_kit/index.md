# code_metrics_kit

Code metrics kit


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

  * maintainability_index_actual: numeric(7,2)

  * maintainability_index_target: numeric(7,2)

  * maintainability_index_ratio: numeric(7,2)

  * maintainability_index_unit: string

  * maintainability_index_description: string

  * line_count_actual: numeric(7,2)

  * line_count_target: numeric(7,2)

  * line_count_ratio: numeric(7,2)

  * line_count_unit: string

  * line_count_description: string

  * test_automation_code_coverage_actual: numeric(7,2)

  * test_automation_code_coverage_target: numeric(7,2)

  * test_automation_code_coverage_ratio: numeric(7,2)

  * test_automation_code_coverage_unit: string

  * test_automation_code_coverage_description: string

