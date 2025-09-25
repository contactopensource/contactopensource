# status_system


Status System, such as categories for:

* Red, Amber, Green

* Small, Medium, Large

* Error, Warning, Information


## Attributes

Meta:

  * id: uuid (index)

  * sign: string (index) - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp (index)

  * created_by: url (index)

  * updated_at: timestamp (index)

  * updated_by: url (index)

  * deleted_at: timestamp (index)

  * deleted_by: url (index)

  * locale_id: locale.id (index) - example: the id of locale "English - United States".

Main:

  * key: string (index) - example: rag

  * formal_name: string (index) - example: Red Amber Green

