# phone_contact

A `phone_contact` is a telephone number, with some optional fields for precision in worldwide countries.

For E.164 information, see https://en.wikipedia.org/wiki/E.164

Attributes that are phone-related:

* label ~ text ~ example: "mobile"

* number_text ~ text ~ example: "1 (415) 555-0000"

Attributes that are E.164-related:

* e164_text ~ varchar(15) ~ example: "14155550000" means United States country code, San Franicsco area code, etc.

* e164_country_code varchar(3) ~ example: "1" means United States ~ see https://en.wikipedia.org/wiki/E.164

* e164_national_destination_code ~ varchar(13) ~ example: "415" is the United States area code of San Francisco

* e164_group_identification_code ~ varchar(4) ~ example: TODO

* e164_trial_identification_code ~ varchar(3) ~ example: TODO

* e164_subscriber_number ~ varchar(14) ~ example: "5550000" ~ see https://en.wikipedia.org/wiki/E.164
