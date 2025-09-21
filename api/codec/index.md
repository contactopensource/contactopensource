# codec


A codec encodes or decodes a data stream or signal.


## Attributes

Meta:

  * id: uuid (index)

  * sign: char - example: the emoji "green check mark" for the semantics of "this item is complete".

  * lock_version: integer

  * created_at: timestamp_utc_usec

  * created_by: url

  * updated_at: timestamp_utc_usec

  * updated_by: url

  * retired_at: timestamp_utc_usec

  * retired_by: url

  * locale_id: locale.id - example: the id of locale "English - United States".

Card:

  * title: string (index) - example: Alice Anderson

  * subtitle: string (index) - example: @alice

  * summary: string - example: This text is a one-line summary, maximum 72 characters, for compatibility with terminal screens and many other systems.

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

Main:

  * name: text - example: Ogg Vorbis Compressed Audio

  * code: text - example: ogg

  * icon: text - example: https://example.com/image.jpg

  * link: text - example: https://wikipedia.org/wiki/Ogg

  * note: text - example: Open source and patent free

  * creator_name: text - example: Xiph

  * prefer_file_extension: text - example: ogg

  * prefer_media_type_id: media_type.id - example: audio/ogg

  * lossy_flag: boolean - example: True

  * floss_flag: boolean - example: true means free libre open source software

Bit Rate:

  * fixed_bit_rate: decimal - example: 22000 means 23000 samples per second

  * variable_bit_rate_minimum: decimal - example: 11000 means 11000 samples per second minimum

  * variable_bit_rate_maximum: decimal - example: 44000 means 44000 samples per second maximum

Channel Count:

  * fixed_channel_count: integer - example: 2 channel audio typically means stereophonic

  * variable_channel_count_minimum: integer - example: 1 channel audio typically means monophonic

  * variable_channel_count_maximum: integer - example: 5 channel audio typically means surround sound

