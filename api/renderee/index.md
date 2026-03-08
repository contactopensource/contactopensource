# renderee


Renderee is renderable input (e.g. PlantUML text markup) and rendered output (e.g. PlantUML PNG image).


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

  * renderer_id: renderer.id

  * input_media_type_id: media_type.id - example: Media type "text/vnd.plantuml" meaning PlantUML text

  * input_as_json: text - example: The renderer input JSON.

  * input_as_text: text - example: @startuml ... @enduml

  * input_as_url: text - example: https://example.com/photo.jpg

  * output_media_type_id: media_type.id - example: Media type "image/png" for PlantUML text

  * output_as_json: text - example: The renderer output JSON.

  * output_as_text: url - example: The renderer output text, such as "This is a photo of two people smiling."

  * output_as_url: url - example: The renderer output URL, such as "https://example.com/diagram.png"

