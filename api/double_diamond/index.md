# double_diamond


Double Diamond is an innovation process model.


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

  * phase_1_title: text - example: Discover

  * phase_1_smart: smart - example: The discover phase is …

  * phase_1_resolve_wall_time: duration - example: 4 hours

  * phase_1_resolve_work_time: duration - example: 4 hours

  * phase_1_reliability_unit_interval: numeric(6,6) - example: 0.999999

  * phase_2_title: text - example: Define

  * phase_2_smart: smart - example: The define phase is …

  * phase_2_wall_time: duration - example: 4 hours

  * phase_2_work_time: duration - example: 2 hours

  * phase_2_total_count: count - example: 100

  * phase_2_error_count: count - example: 1

  * phase_2_resolve_wall_time: duration - example: 4 hours

  * phase_2_resolve_work_time: duration - example: 4 hours

  * phase_2_reliability_unit_interval: numeric(6,6) - example: 0.999999

  * phase_3_title: text - example: Develop

  * phase_3_smart: smart - example: The develop phase is …

  * phase_3_wall_time: duration - example: 4 hours

  * phase_3_work_time: duration - example: 2 hours

  * phase_3_total_count: count - example: 100

  * phase_3_error_count: count - example: 1

  * phase_3_resolve_wall_time: duration - example: 4 hours

  * phase_3_resolve_work_time: duration - example: 4 hours

  * phase_3_reliability_unit_interval: numeric(6,6) - example: 0.999999

  * phase_4_title: text - example: Deliver

  * phase_4_smart: smart - example: The deliver phase is …

  * phase_4_wall_time: duration - example: 4 hours

  * phase_4_work_time: duration - example: 2 hours

  * phase_4_total_count: count - example: 100

  * phase_4_error_count: count - example: 1

  * phase_4_resolve_wall_time: duration - example: 4 hours

  * phase_4_resolve_work_time: duration - example: 4 hours

  * phase_4_reliability_unit_interval: numeric(6,6) - example: 0.999999

