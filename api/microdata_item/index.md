# microdata_item


Microdata item specification for identifying content such as text, images, videos, etc.


## Attributes

Meta:

  * id: uuid (index)

  * lock_version: int

  * created_at: timestamp

  * created_by: url

  * updated_at: timestamp

  * updated_by: url

  * retired_at: timestamp

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Main:

  * itemtype: URL - example: http://schema.org/Person

  * itemprop: text - example: name

