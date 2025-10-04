# color_point_rgba_with_byte


Color point RGBA (red, green, blue, alpha) with byte


## Attributes

meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * deleted_at: timestamp_utc_usec (index)

  * deleted_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

Main:

  * red: byte - example: 0x00 means no red

  * green: byte - example: 0x88 means half green

  * blue: byte - example: 0xFF means full blue

  * alpha: byte - example: 0x88 means half translucent

