# measurement_system


A measurement system, such as of distance, or time, etc.


## Attributes

Meta:

  * id: uuid (index)

  * sign: char (index) - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * deleted_at: timestamp_utc_usec (index)

  * deleted_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

Main:

  * key: string (index) - example: si

  * formal_name: string (index) - example: International System of Units

