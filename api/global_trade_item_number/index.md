# global_trade_item_number

A Global Trade Item Number (GTIN) is an identifier for trade items, developed by the international organization GS1.

Such identifiers are used to look up product information in a database (often by entering the number through a barcode scanner pointed at an actual product) which may belong to a retailer, manufacturer, collector, researcher, or other entity. The uniqueness and universality of the identifier is useful in establishing which product in one database corresponds to which product in another database, especially across organizational boundaries.

A GTIN code is made up of four parts:

  * prefix,
      help: GS1 prefix, typically a company-specific prefix
      type: digit(3)
      index: true
      required: true
  - item:
      type: digit(9)
      index: true
      required: true
  - check_digit:
      type: digit(1)
      required: true
  - indicator_digit:
      type: digit(1)
      required: false

The GTIN standard has incorporated the International Standard Book Number (ISBN), International Standard Serial Number (ISSN), International Standard Music Number (ISMN), International Article Number (which includes the European Article Number and Japanese Article Number) and some Universal Product Codes (UPCs), into a universal number space.

This implementation is GTIN 14 i.e. exactly 14 digits long. Note that GTIN-12 and GTIN-13 numbers can be encoded as GTIN-13 or GTIN-14 by adding initial padding zeroes. For GTIN-14, this indicates a "packaging level" of a single item.

https://wikipedia.org/wiki/Global_Trade_Item_Number


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

  * code: digit(14) (index)

Parts:

  * prefix: digit(3) (index)

  * item: digit(9) (index)

  * check_digit: digit(1)

  * indicator_digit: digit(1)

