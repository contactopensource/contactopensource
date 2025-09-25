# color_point_cymk_as_unit_interval


Color point CYMK (cyan, yellow, magenta, black) as unit interval


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

  * cyan: unit_interval - example: 0.0 means no cyan

  * yellow: unit_interval - example: 0.5 means half yellow

  * magenta: unit_interval - example: 1.0 means full magenta

  * black: unit_interval - example: 0.1 means slightly black

