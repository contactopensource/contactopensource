# universal_product_code


The Universal Product Code (UPC) is a barcode symbology that is used worldwide for tracking trade items in stores.

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

