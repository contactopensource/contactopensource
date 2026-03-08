# vital_sign_kit


Vital sign kit


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

  * blood-pressure-diastolic-as-mmhg: count

  * blood-pressure-systolic-as-mmhg: count

  * body-fat-as-percentage: percent

  * body-temperature-as-celcius: celcius

  * cholesterol-hdl-as-mmol-per-litre: count

  * cholesterol-ldl-as-mmol-per-litre: count

  * heart-rate-as-beats-per-minute: count

  * heart-rate-variability: percent

  * height-as-cm: count

  * respiratory-rate-as-breaths-per-minute: count

  * sleep-score-as-percent: percent

  * total-sleep-time-as-min-per-day: count

  * vo2-max-as-ml-per-kg-per-minute: count

  * waist-circumference-as-cm: count

  * weight-as-kg: count

