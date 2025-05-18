# book


A book is a typical book.


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

  * title: text - example: Beloved

  * subtitle: text - example: A Novel

Codes:

  * global_trade_item_number_id: global_trade_item_number.id - example: 978-0-307-27722-1

  * international_standard_book_number_id: international_standard_book_number.id - example: 978-0-307-27722-1

