# color_name_kit

Color name kit


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

  * hex: hexdigit(6)+ - example: "FF0000" means red

  * html_color_name: text - example: "Red" as titlecase

  * x11_color_name: text - example: "Red" as titlecase

  * color_naming_system_name: text - example: "red" as lowercase

  * pantone_process_color_name: text - example: "Red 032 C" means red

