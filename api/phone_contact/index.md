# phone_contact

See https://en.wikipedia.org/wiki/E.164


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

  * label: text - example: mobile

  * number_text: text (index) - example: 1 (415) 555-0000

  * e164_text: string(15) (index) - example: 14155550000 means United States country code, San Francisco area code, etc.

  * e164_country_code: string(3) (index) - example: 1 means United States

  * e164_national_destination_code: string(13) (index) - example: 415 means San Francisco area code, within United States.

  * e164_group_identification_code: string(4) - example: TODO

  * e164_trial_identification_code: string(3) - example: TODO

  * e164_subscriber_number: string(14) - example: 5550000 means a local number, without country code or national destination code

