# total_project_control


Total Project Control (TPC)


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

  * dipp: numeric(7,2)

  * dipp_progress_index_ratio: numeric(7,2)

  * dipp_progress_index_numerator: numeric(7,2)

  * dipp_progress_index_denominator: numeric(7,2)

  * expected_monetary_value: numeric(7,2)

  * cost_estimate_to_complete: numeric(7,2)

