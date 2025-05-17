# currency_type


Currency is a standardization of money in any form.


## Attributes

Meta:

  * id: uuid (index)

  * lock_version: int

  * created_at: timestamp

  * created_by: url

  * updated_at: timestamp

  * updated_by: url

  * retired_at: timestamp

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Main:

  * name: text (index) - example: United States Dollar

  * code: text (index) - example: USD

  * symbol: text (index) - example: $

