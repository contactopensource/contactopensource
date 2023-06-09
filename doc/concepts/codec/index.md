# codec

Any kind of coding-decoding process, such as an audio codec (e.g. MP3), image codec (e.g. PNG), video codec (e.g. MP4).

Attributes:

* name : string+ -- example: "MP3 audio"

* code : text -- example: "mp3"

* icon : uri -- example: https://example.com/mp3.png

* link : uri -- example: "https://example.com/mp3"

* note : text -- example: "MP3 is the most popular audio codec worldwide"

* creator_name : string+ -- example: "Fraunhofer Society"

* prefer_file_extension : text -- example: "mp3"

* prefer_media_type_id : prefer_media_type(id)+ -- example: audio/mp3

* lossy_flag : flag -- is the codec lossy?

* floss_flag : flag -- is the codec free libre open source software?

* fixed_bit_rate : decimal -- example: 22000 is a typical bit rate for people

* variable_bit_rate_minimum : decimal

* variable_bit_rate_maximum : decimal

* fixed_channel_count : count -- example: 2 channel typically means stereo sound

* variable_channel_count_minimum : count

* variable_channel_count_maximum : count
