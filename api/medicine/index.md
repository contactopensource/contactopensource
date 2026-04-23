# medicine


Medicine is a substance or combination of substances used to diagnose, treat, prevent, or alleviate symptoms of diseases and improve health.


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

  * international_nonproprietary_name: string - example: aspirin

  * description: string - example: Aspirin is a medication used to reduce pain, fever, or inflammation. It is also used as an antiplatelet agent to prevent blood clots.

