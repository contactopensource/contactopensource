# codec

A codec is a computer hardware or software component that encodes or decodes a data stream or signal.
Codec is a portmanteau of coder/decoder.
https://wikipedia.org/wiki/Codec



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

