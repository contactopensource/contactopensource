# tag


A tag is one word that annotates something.

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

* summary: string(255) - example: This text is a summary, such as an abstract, introduction, rollup, etc.

* description: text - example: This text is a description and can be as long as you wish.

* disambiguation: text - example: This text explains the difference between this item and others.

* image_1024x1024_url: url

* image_1024x1024_alt: text

* emoji: text - example: 🚀

* star_count: integer - example: 5 for the best rating

* quick_response_code_id: quick_response_code.id - example: A quick-response code that is a URL that leads to this card.

* universal_product_code_id: universal_product_code.id - example: A universal product code that is an id that leads to this card.

Main:

* key: string - example: hot

* description: text - example: THe hot tag means this is trending in popularity.

