# color_name_kit

Color name kit


## Attributes

Meta:

  * id: uuid (index)

  * sign: string (index) - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp (index)

  * created_by: url (index)

  * updated_at: timestamp (index)

  * updated_by: url (index)

  * deleted_at: timestamp (index)

  * deleted_by: url (index)

  * locale_id: locale.id (index) - example: the id of locale "English - United States".

Main:

  * hex: hexdigit - example: "FF0000" means red

  * html_color_name: text - example: "Red" as titlecase

  * x11_color_name: text - example: "Red" as titlecase

  * color_naming_system_name: text - example: "red" as lowercase

  * pantone_process_color_name: text - example: "Red 032 C" means red

