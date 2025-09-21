# quick_response_code


A quick-response (QR) code is a type of two-dimensional matrix barcode.


## Attributes

Meta:

  * id: uuid (index)

  * sign: char - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp_utc_usec

  * created_by: url

  * updated_at: timestamp_utc_usec

  * updated_by: url

  * retired_at: timestamp_utc_usec

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Main:

  * code: string (index)

  * image_url: url

  * image_alt: text

