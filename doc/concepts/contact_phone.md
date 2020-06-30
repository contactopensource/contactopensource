# contact_phone

Any kind of telephone number, with optional fields for telephone company standards known as "E.164".

Phone-related attributes:

* label: text -- example: 'mobile phone'

* number_text: text -- example: '1 (415) 555-0000'

E.164-related attributes -- see https://en.wikipedia.org/wiki/E.164:

* e164_text: varchar(15) -- example: '14155550000' means United States country code, San Franicsco area code, etc.

* e164_country_code: varchar(3) -- example: '1' means United States -- see https://en.wikipedia.org/wiki/E.164

* e164_national_destination_code: varchar(13) -- example: '415' is the United States area code of San Francisco

* e164_group_identification_code: varchar(4) -- example: TODO

* e164_trial_identification_code: varchar(3) -- example: TODO

* e164_subscriber_number: varchar(14) -- example: '5550000' -- see https://en.wikipedia.org/wiki/E.164
