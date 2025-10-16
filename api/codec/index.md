# codec


A codec encodes or decodes a data stream or signal.


## Attributes

meta:

  * id: uuid (index)

  * lock_version: integer

  * created_at: timestamp_utc_usec (index)

  * created_by: url (index)

  * updated_at: timestamp_utc_usec (index)

  * updated_by: url (index)

  * deleted_at: timestamp_utc_usec (index)

  * deleted_by: url (index)

  * locale_code: string (index) - example: the locale code "en-US" means "English - United States".

  * tagging: string (index) - example: The tagging "red green blue" means a list of three tags ["red", "green", "blue"]

card:

  * name: string(50) (index) - example: Alice Anderson

  * subname: string(50) (index) - example: @alice

  * summary: string(72) - example: This text is a one-line summary, maximum 72 characters, for compatibility with terminal screens and many other systems.

  * description: text - example: This text is a description and can be as long as you wish.

  * disambiguation: text - example: This text explains the difference between this item and others.

  * sign: string(1) (index) - example: a green check mark emoji to indicate that this instance is complete.

  * kind: string (index) - example: a "Pet" resource can be a kind of "Dog", "Cat", "Bird", etc.

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

  * fixed_bit_rate: numeric(7,2) - example: 22000 means 23000 samples per second

  * variable_bit_rate_minimum: numeric(7,2) - example: 11000 means 11000 samples per second minimum

  * variable_bit_rate_maximum: numeric(7,2) - example: 44000 means 44000 samples per second maximum

Channel Count:

  * fixed_channel_count: integer - example: 2 channel audio typically means stereophonic

  * variable_channel_count_minimum: integer - example: 1 channel audio typically means monophonic

  * variable_channel_count_maximum: integer - example: 5 channel audio typically means surround sound

