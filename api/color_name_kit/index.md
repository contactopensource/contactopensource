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

  * hex: hexdigit(6)+ - example: "FF0000" means red

  * html_color_name: text - example: "Red" as titlecase

  * x11_color_name: text - example: "Red" as titlecase

  * color_naming_system_name: text - example: "red" as lowercase

  * pantone_process_color_name: text - example: "Red 032 C" means red

