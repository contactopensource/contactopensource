# edge


An edge is for linking from one node to another node.

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

* start_at_timestamp_utc: timestamp - example: 2020-01-01 00:00:00+00:00

* stop_at_timestamp_utc: timestamp - example: 2020-01-01 00:00:00+00:00

Modifiers:

* count: integer - example: 100

* unit_interval: unit_interval - example: 0.1 means unit interval 10%

* dual_interval: dual_interval - example: -0.1 means dual interval -10%

