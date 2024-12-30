# color_point_rgb_with_byte

Color point RGB (red, green, blue) with byte


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

  * red: byte - example: 0x00 means no red

  * green: byte - example: 0x88 means half green

  * blue: byte - example: 0xFF means full blue
