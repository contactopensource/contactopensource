# email_contact


An email contact, which is an email address and personal info.

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

* image_1024x1024_url: url

* image_1024x1024_alt: text

* emoji: text - example: 🚀

* star_count: integer - example: 5 for the best rating

Main:

* address: text - example: Alice Adams <alice@example.com>

Parts:

* display_name: text - example: Alice Adams

* addr_spec: text - example: alice@example.com

* local_part: text - example: alice

