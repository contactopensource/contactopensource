# status_system


Status System, such as categories for:

* Red, Amber, Green

* Small, Medium, Large

* Error, Warning, Information


## Attributes

Meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp

  * created_by: url

  * updated_at: timestamp

  * updated_by: url

  * retired_at: timestamp

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Main:

  * key: string (index) - example: rag

  * formal_name: string (index) - example: Red Amber Green

