# item


Generic item suitable for demonstrations

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

Card:

* title: string(50) (index) - example: Alice Anderson

* subtitle: string(50) (index) - example: @alice

* summary: string - example: I am a doctor who helps treat children.

* description: text - example: This text is a description and can be as long as you wish.

* disambiguation: text - example: This text explains the difference between this item and others.

* image_1080x1080_url: url

* image_1080x1080_alt: text

* emoji: text - example: 🚀

* star_count: integer - example: 5 for the best rating

Sketches:

* geographic_point_id: geographic_point.id

* color_point_rgb_with_unit_interval_id: color_point_rgb_with_unit_interval.id

Codes:

* quick_response_code_id: quick_response_code.id

* stock_keeping_unit_id: stock_keeping_unit.id

* universal_product_code_id: universal_product_code.id

