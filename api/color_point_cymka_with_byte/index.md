# color_point_cymka_as_byte


Color point CYMKA (cyan, yellow, magenta, black, alpha) as byte


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

  * cyan: byte - example: 0x00 means no cyan

  * yellow: byte - example: 0x88 means half yellow

  * magenta: byte - example: 0xFF means full magenta

  * black: byte - example: 0x10 means slightly black

  * alpha: byte - example: 0x88 means half transparent

