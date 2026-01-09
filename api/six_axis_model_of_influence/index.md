# six_axis_model_of_influence


The Six-Axis Model Of Influence by Chase Hughes is how he coaches his staff.


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

  * suggestibility: probability - example: 0.1 means 10%

  * focus: probability - example: 0.1 means 10%

  * openness: probability - example: 0.1 means 10%

  * connection: probability - example: 0.1 means 10%

  * compliance: probability - example: 0.1 means 10%

  * expectancy: probability - example: 0.1 means 10%

