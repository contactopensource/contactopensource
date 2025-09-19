# passport


A passport credential, such as a government passport for travel.

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

Main:

* country_id: country.id

* number_text: text (index) - example: 111-111-111-111

* start_date: date - example: 2020-01-01

* stop_date: date - example: 2030-01-01

* four_corner_open_photo_url: url

* four_corner_face_photo_url: url

