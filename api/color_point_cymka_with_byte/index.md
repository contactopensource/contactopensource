# color_point_cymka_as_byte


Color point CYMKA (cyan, yellow, magenta, black, alpha) as byte


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

  * cyan: byte - example: 0x00 means no cyan

  * yellow: byte - example: 0x88 means half yellow

  * magenta: byte - example: 0xFF means full magenta

  * black: byte - example: 0x10 means slightly black

  * alpha: byte - example: 0x88 means half transparent

