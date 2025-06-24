# quick_response_code


A quick-response (QR) code is a type of two-dimensional matrix barcode.

## Attributes

Meta:

* id: uuid (index)

* lock_version: integer

* created_at: timestamp

* created_by: url

* updated_at: timestamp

* updated_by: url

* retired_at: timestamp

* retired_by: url

* locale_id: locale.id - example: the id of locale "English - United States".

Main:

* code: string (index)

* image_url: url

