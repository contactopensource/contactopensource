# color_point_rgba_with_byte


Color point RGBA (red, green, blue, alpha) with byte


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

  * red: byte - example: 0x00 means no red

  * green: byte - example: 0x88 means half green

  * blue: byte - example: 0xFF means full blue

  * alpha: byte - example: 0x88 means half translucent

