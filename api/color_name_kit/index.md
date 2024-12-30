# color_name_kit

Color name kit


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

  * hex: hexdigit(6)+ - example: FF0088 means purple

  * html_color_name: text - example: red

  * x11_color_name: text - example: red

  * color_naming_system_name: text - example: red

  * pantone_process_color_name: text - example: red

