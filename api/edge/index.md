# edge


An edge is for linking from one node to another node.


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

Card:

  * sign: string(1) (index) - example: a green check mark emoji to indicate that this instance is complete.

  * kind: string (index) - example: a "Pet" resource can be a kind of "Dog", "Cat", "Bird", etc.

  * title: string(50) (index) - example: Alice Anderson

  * subtitle: string(50) (index) - example: @alice

  * summary: string(72) - example: This text is a one-line summary, maximum 72 characters, for compatibility with terminal screens and many other systems.

  * description: text - example: This text is a description and can be as long as you wish.

  * disambiguation: text - example: This text explains the difference between this item and others.

  * avatar_image_400x400_url: url

  * avatar_image_400x400_alt: url

  * main_image_1080x1080_url: url

  * main_image_1080x1080_alt: text

  * main_image_1920x1080_url: url

  * main_image_1920x1080_alt: text

  * main_image_1080x1920_url: url

  * main_image_1080x1920_alt: text

  * emoji: text - example: 🚀

  * star_count: integer - example: 5 for the best rating

  * quick_response_code_id: quick_response_code.id - example: A quick-response code that is a URL that leads to this card.

  * universal_product_code_id: universal_product_code.id - example: A universal product code that is an id that leads to this card.

Subject:

  * subject_uri: text - example: http://example.com/alpha.html

  * subject_database: text - example: contactopensource

  * subject_schema: text - example: public

  * subject_table: text - example: users

  * subject_id: id - example: 34b75621921fdc7ac83459c5c4b7dba6

Predicate:

  * predicate_uri: text - example: http://example.com/bravo.html

  * predicate_database: text - example: contactopensource

  * predicate_schema: text - example: public

  * predicate_table: text - example: likes

  * predicate_id: id - example: 124cf87662601612ae47379c91876e1e

Object:

  * object_uri: text - example: http://example.com/charlie.html

  * object_database: text - example: contactopensource

  * object_schema: text - example: public

  * object_table: text - example: post

  * object_id: id - example: 9588686d2a1b4cda40cad5269c87a627

Lifecycle:

  * start_at_timestamp_utc: timestamp_utc_usec - example: 2020-01-01 00:00:00+00:00

  * stop_at_timestamp_utc: timestamp_utc_usec - example: 2020-01-01 00:00:00+00:00

Modifiers:

  * count: integer - example: 100

  * unit_interval: unit_interval - example: 0.1 means unit interval 10%

  * dual_interval: dual_interval - example: -0.1 means dual interval -10%

