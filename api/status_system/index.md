# status_system


Status System, such as categories for:

* Red, Amber, Green

* Small, Medium, Large

* Error, Warning, Information


## Attributes

Meta:

  * id: uuid (index)

  * sign: char - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp_utc_usec

  * created_by: url

  * updated_at: timestamp_utc_usec

  * updated_by: url

  * retired_at: timestamp_utc_usec

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Main:

  * key: string (index) - example: rag

  * formal_name: string (index) - example: Red Amber Green

