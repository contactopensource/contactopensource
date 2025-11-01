# color_name_kit

Color name kit


## Attributes

meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * retired_at: timestamp_utc_usec (index)

  * retired_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

  * tagging: string (index) - example: The tagging "red green blue" means a list of three tags ["red", "green", "blue"]

Main:

  * hex: hexdigit(6)+ - example: "FF0000" means red

  * html_color_name: text - example: "Red" as titlecase

  * x11_color_name: text - example: "Red" as titlecase

  * color_naming_system_name: text - example: "red" as lowercase

  * pantone_process_color_name: text - example: "Red 032 C" means red

