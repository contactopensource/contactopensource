# color_point_cymka_as_byte

Color point CYMKA (cyan, yellow, magenta, black, alpha) as byte


## Attributes

Meta:

  * id: bigint (index)

  * zid: uuid (index)

  * lock_version: int

  * created_at: timestamp

  * created_by: url

  * updated_at: timestamp

  * updated_by: url

  * retired_at: timestamp

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Main:

  * cyan: byte - example: 0x00 means no cyan

  * yellow: byte - example: 0x88 means half yellow

  * magenta: byte - example: 0xFF means full magenta

  * black: byte - example: 0x10 means slightly black

  * alpha: byte - example: 0x88 means half transparent
