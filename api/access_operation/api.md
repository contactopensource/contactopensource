# access_operation

Access control operation.


## Attributes

meta:

  * id: bigint+ -- example: None

  * zid: uuid+ -- example: None

  * lock_version: int -- example: None

  * created_at: timestamp -- example: None

  * created_by: url -- example: None

  * updated_at: timestamp -- example: None

  * updated_by: url -- example: None

  * retired_at: timestamp -- example: None

  * retired_by: url -- example: None

  * locale_id: locale(id)+ -- example: the id of locale "English - United States".

card:

  * title: string(50)+ -- example: Alice Anderson

  * subtitle: string(50)+ -- example: @alice

  * summary: string -- example: I am a doctor who helps treat children.

  * description: text -- example: This text is a description and can be as long as you wish.

  * disambiguation: text -- example: This text explains the difference between this item and others.

  * image_1024x1024_url: url -- example: None

  * image_1024x1024_alt: text -- example: None

  * emoji: text -- example: 🚀

  * star_count: integer -- example: 5 for the best rating

main:

  * key: string+ -- example: access_operation_example

