# color_point_cymk_as_unit_interval

Color point CYMK (cyan, yellow, magenta, black) as unit interval


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

  * cyan: unit_interval - example: 0.0 means no cyan

  * yellow: unit_interval - example: 0.5 means half yellow

  * magenta: unit_interval - example: 1.0 means full magenta

  * black: unit_interval - example: 0.1 means slightly black

