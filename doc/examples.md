# Examples

* []()

## Node

example: Alice node

* id: c9d5a052adab471f2d0e63054a535793

* uri: "https://example.com/alice.html"

* text: "Alice"

* json: "{"node": "Alice"}"

* xml: "<?xml version="1.0"?><node>Alice</node>"

* number: 111.111

example: Bob node

* id: 88f9eba69345b623bafcc2a50e53f2f8

* uri: "https://example.com/bob.html"

* text: "Bob"

* json: "{"node": "Bob"}"

* xml: "<?xml version="1.0"?><node>Bob</node>"

* number: 222.222


### Person

example: Alice

* id: cc1143129505d87f5f0a044b7dbef236

* birth_date: 2000-01-01

* death_date: 2099-01-01

example: Bob

* id: 0f8a222d89c986b4a95ad60a55fad6e6

* birth_date: 2000-01-01

* death_date: 2099-01-01


### Person name

example: Dr. Alice Amy Adams Jr.

* id: cc1143129505d87f5f0a044b7dbef236

* given_name: "Alice"

* given_name_phonetic: "Alice"

* middle_name: "Amy"

* middle_name_phonetic: "Amy"

* family_name: "Adams"

* family_name_phonetic: "Adams"

* legal_name: "Alice Amy Adams"

* legal_name_phonetic: "Alice Amy Adams"

* prefix_name: "Dr."

* prefix_name_phonetic: "Doctor"

* suffix_name: "Jr."

* suffix_name_phonetic: "Junior"

* salutation_name: "Dr. Adams"

* salutation_name_phonetic: "Doctor Adams"

* addressee_name: "Dr. Alice Adams Jr."

* addressee_name_phonetic: "Doctor Alice Adams Junior"

* nickname: "Ali"

* nickname_phonetic: "Allee"

example: Hon. Bob Brian Brown Sr.

* id: 925561d3c5d097b690d029ef03d08721

* given_name: "Bob"

* given_name_phonetic: "Bob"

* middle_name: "Brian"

* middle_name_phonetic: "Brian"

* family_name: "Brown"

* family_name_phonetic: "Brown"

* legal_name: "Bob Brian Brown"

* legal_name_phonetic: "Bob Brian Brown"

* prefix_name: "Hon."

* prefix_name_phonetic: "Honorable"

* suffix_name: "Sr."

* suffix_name_phonetic: "Senior"

* salutation_name: "Hon. Brown"

* salutation_name_phonetic: "Honorable Brown"

* addressee_name: "Hon. Bob Brown Sr."

* addressee_name_phonetic: "Honorable Bob Brown Senior"

* nickname: "Bobby"

* nickname_phonetic: "Bobby"


### Person pronouns

example: she, her, etc.

* id: cc1143129505d87f5f0a044b7dbef236

* subject_pronoun: "she"

* object_pronoun: "her"

* dependent_possessive_pronoun: "her"

* independent_possessive_pronoun: "hers"

* reflexive_pronoun: "herself"

* intensive_pronoun: "herself"

* disjunctive_pronoun: "her"

example: he, him, etc.

* id: b16790a15e769541cd1b81ca4fe33a72

* subject_pronoun: "he"

* object_pronoun: "him"

* dependent_possessive_pronoun: "his"

* independent_possessive_pronoun: "his"

* reflexive_pronoun: "himself"

* intensive_pronoun: "himself"

* disjunctive_pronoun: "him"



## Event

example: Lunch

* id: d1e6f8124492cf2a0597cdb8bc059017

* name: "Lunch"

* start_timestamp_utc: "2020-01-01 00:00:00", "YYYY-MM-DD HH24:MI:SS")

* stop_timestamp_utc: "2030-01-01 00:00:00", "YYYY-MM-DD HH24:MI:SS")

* duration_in_seconds: 3600 (one hour)


## Organizations

example: Acme Agency

* id: 423f36dcba577aecb7c127b898c00183

* name: Acme Agency

* emoji: "U+1F60A" (happy face)

* image_uri: "https://example.com/alpha.jpg"

* color_hex: "FF0000" (red)

* css_class: "selected"

* star_count: 5

example: Biotech Business

* id: 3855b426c0aa5138bbe35cb774746f48

* name: "Biotech Business"

* emoji: "U+1F610" (e.g. neutral face)

* image_uri: "https://example.com/bravo.jpg"

* color_hex: "00FF00" (blue)

* css_class: "unselected"

* star_count: 3


## Date Time Range

example: one second

  * start_as_timestamp_utc: 2020-01-01T00:00:00

  * stop_as_timestamp_utc: 2020-01-01T00:00:01

example: one decade

  * start_as_timestamp_utc: 2020-01-01 00:00:00

  * stop_as_timestamp_utc: 2030-01-01 00:00:00


## Edge

Subject:

  * subject_uri: "http://example.com/alpha.html"

  * subject_database: "example_database_1"

  * subject_schema: "example_schema_1"

  * subject_table: "example_table_1"

  * subject_id: 694492e037227acf0a264d235f18d1e9

Predicate:

  * predicate_uri: "http://example.com/bravo.html"

  * predicate_database: "example_database_2"

  * predicate_schema: "example_schema_2"

  * predicate_table: "example_table_2"

  * predicate_id: c65f170fb20902c65170d0e406ee25ba

Object:

  * object_uri: "http://example.com/charlie.html"

  * object_database: "example_database"

  * object_schema: "example_schema"

  * object_table: "example_table"

  * object_id: 52afcf33f8ffec0d0154fb2373c13898

Lifecycle:

  * start_at_timestamp_utc: 2020-01-01T00:00:00

  * stop_at_timestamp_utc: 2020-01-01T00:00:00

Modifiers:

  * count: 8

  * weight: 8.8

  * unit_interval: 0.8 (a.k.a. 80%)

  * dual_interval: -0.8 (a.k.a. -80%)

## Email contact

example: Alice Adams <alice@example.com>

  * id: dc3200ef1e8066ab892964f9292cd15e

  * address: "Alice Adams <alice@example.com>"

  * display_name: "Alice Adams"

  * addr_spec: "alice@example.com"

example: Bob Brown <bob@example.com>

  * id: 92543cb0d9829d78b6188c108e25be9e

  * address: "Bob Brown <bob@example.com>"

  * display_name: "Bob Brown"

  * addr_spec: "bob@example.com"



## Geographic point

example: New York Grand Central

  * id: c8fb5187e718484eefb9e8dceef4cd68

  * latitude_as_decimal_degrees: 40.752687

  * longitude_as_decimal_degrees: 73.977188

  * altitude_as_meters: 39.6

  * elevation_as_meters: 39.6


example: New York Grand Central, delta -0.1 latitude, -0.1 longitude

  * id: d3ef3da36e8e835a464b51b00ae9a827

  * latitude_as_decimal_degrees: 40.652687

  * longitude_as_decimal_degrees: 73.877188

  * altitude_as_meters: 39.6

  * elevation_as_meters: 39.6

example: New York Grand Central, delta +0.1 latitude, +0.1 longitude

  * id: 17c3d2697fea9eeeca776f855b69b394

  * latitude: 40.852687

  * longitude: 74.077188

  * altitude: 39.6

  * 39.6

example: San Francisco Ferry Building

  * id: 6e7e03c894c96caeee4719e3dcccd339

  * latitude: 37.795563

  * longitude: -122.393312

  * altitude: 12.1

  * elevation: 12.1

example: San Francisco Ferry Building, delta -0.1 latitude, -0.1 longitude

  * id: dffa13312090a7966cc05af0bcecebc4

  * latitude: 37.695563

  * longitude: -122.293312

  * altitude: 12.1

  * elevation: 12.1

example: San Francisco Ferry Building, delta +0.1 latitude, +0.1 longitude

  * id: a93526cc717f3bc83e32ed2e74d1fc85

  * latitude: 37.805563

  * longitude: -122.493312

  * altitude: 12.1

  * elevation: 12.1


## Geo circle

example: New York, Grand Central, spread 1 kilometer

  * id: d4677d7c8f7b034c9ba331087097ed6b

  * center_as_geography_point_id: c8fb5187e718484eefb9e8dceef4cd68

  * spread_as_meters: 1000

example: San Francisco, Ferry Building, spread 1 kilometer

  * id: 4b74e5d7848af524199f26ecf7348718

  * center_as_geography_point_id: "6e7e03c894c96caeee4719e3dcccd339" as id

  * spread_as_meters: 1000


## Geo rectangles

example: New York, Grand Central, delta -/+ 0.1 latitude/longitude

  * id: 353fc6f3bfc3c56a5a687f9a986af0da

  * geography_point_id: d3ef3da36e8e835a464b51b00ae9a827 (New York Grand Central, delta -0.1 latitude, -0.1 longitude)

  * geography_point id: 17c3d2697fea9eeeca776f855b69b394 (New York Grand Central, delta +0.1 latitude, +0.1 longitude)

example: San Francisco, Ferry Building, delta -/+ 0.1 latitude/longitude

  * id: e809d4983199ea8f89f2915846e8ab9c

  * geography_point_id: dffa13312090a7966cc05af0bcecebc4 (San Francisco Ferry Building, delta -0.1 latitude, -0.1 longitude)

  * geography_point_id: a93526cc717f3bc83e32ed2e74d1fc85 (San Francisco Ferry Building, delta +0.1 latitude, +0.1 longitude)


## Link contact

example: New York + Grand Central + Wikipedia link

  * id: 2a7b687d89d02d308347c7a207de826e

  * label: "New York Grand Central by Wikipedia"

  * uri: "https://en.wikipedia.org/wiki/Grand_Central_Terminal"

example: San Francisco + Ferry Building + Wikipedia link

  * id: 90aa301cc861104c2646c15c2e7db529

  * label: "San Franciso Ferry Building by Wikipedia"

  * uri: "https://en.wikipedia.org/wiki/San_Francisco_Ferry_Building"


## Locale

example: English language + United States

  * id: 01e35cdb11f1441a22fffdbbcc398747

  * text: "en-US"

  * language_code: "en"

  * country_code: "US"

  * script_code: "Latn"

  * region_code: ""

  * variant_code: ""

  * decimal_separator: "."

  * grouping_separator: ","

  * currency_code: "USD"

  * currency_symbol: "$"

  * quotation_start_delimiter: "“"

  * quotation_stop_delimiter: "”"

example: Chinese simplified Mandarin language + China

  * id: 0efde58a9b43066ebfb11bd1bf8d7074

  * text: "zh-CN"

  * language_code: "zh"

  * country_code: "CN"

  * script_code: "Hans"

  * region_code: ""

  * variant_code: ""

  * decimal_separator: "."

  * grouping_separator: " "

  * currency_code: "CNY"

  * currency_symbol: "¥"

  * quotation_start_delimiter: "「"

  * quotation_stop_delimiter: "」"


## Media type

example: text/plain + ASCII

* id: bb40d818933e8e525d54d6cea27d573e

* text: "text/plain;charset=ASCII;boundary=alpha"

* supertype: "text"

* subtype: "html"

* tree: ""

* suffix: ""

* parameters: array["charset=ASCII", "boundary=alpha"]

example: application/json + UTF-8

* id: bf029cf3b57788687fe5b0823c80e901

* text: "application/x.example+json;charset=UTF-8;boundary=something"

* supertype: "application"

* subtype: "example"

* tree: "x."

* suffix: "+json"

* parameters: array["charset=UTF-16", "boundary=bravo"]


## Things (organizations)

example: Acme Agency

* id: 4e7e13bcc42c082e9091ba389c06ba4d

* parent_id: NULL

* name: "Acme Agency"

* image_uri: "https://example.com/acme-agency.jpg"

* color_hex e.g. red: "FF0000"

* css_class: "selected"

* star_count: 5

* start_date: 2000-01-01

* stop_date: 2099-01-01

example: Acme Agency, Art Department

* id: ee88f1b3d1e186faa62d881f5393e92b

* parent_id: 4e7e13bcc42c082e9091ba389c06ba4d (id of Acme Agency)

* name: "Art Department"

* image_uri: "https://example.com/acme-agency/art-department.jpg"

* color_hex e.g. red: "FF0000"

* css_class: "selected"

* star_count: 5

* start_date: 2000-01-01

* stop_date: 2099-01-01

example: Biotech Business

* id: f78731aca36b48b1bdf723c9949e8149

* parent_id: NULL

* name: "Biotech Business"

* image_uri: "https://example.com/bravo.jpg"

* color_hex e.g. blue: "00FF00"

* css_class: "unselected"

* star_count: 3

* start_date: 2000-01-01

* stop_date: 2099-01-01

example: Biotech Business, Biology Department

* id: b59698523e6b32f82fee15e4fd4ab655

* parent_id: f78731aca36b48b1bdf723c9949e8149 (id of Biotech Business)

* image_uri: "https://example.com/bravo-books.jpg"

* color_hex e.g. blue: "00FF00"

* css_class: "unselected"

* star_count: 3

* start_date: 2000-01-01

* stop_date: 2099-01-01


example: Alice's passport credential
(
  * id: 5c6122ea2ceab2a7374bf42095c6cd3e

  -- Passport-related
  * country_text: "US"
  * number_text: "111-111-111-111"

  -- Time-related
  * valid_start_date: "2020-01-01"
  "2030-01-01" -- valid_stop_date
),

-- example: Bob"s passport credential
(
  * id: de2eac04da783ec19c713440e2147c75

  -- Passport-related
  * country_text: "US"
  * number_text: "888-888-888-888"

  -- Time-related
  * valid_start_date: "2020-01-01"
  "2030-01-01" -- valid_stop_date

);



INSERT INTO places VALUES

-- New York + Grand Central
(
  * id: a1b32e52b344acb5187b1749c6697982

  -- Place-related
  "Grand Central in New York" -- name

  -- Postal contact:
  * addressee: -- "Grand Central"
  * street_address: -- "89 E 42nd St"
  * premise_address: -- "Master""s Office"
  * locality_name: -- "New York"
  * region_code: -- "NY"
  * postal_code: -- "10017"
  * country_code: -- "US"
  * continent_code: -- "NA"
  * neighborhood_name: -- "Midtown"

  -- Telephone: 1 (212) 340-2583 = Master"s Office

  -- Geographic point:
  * latitude: -- 40.752687
  * longitude: -- -73.977188

  -- Geo codes:
  * https://plus.codes: -- "87G8Q23F+34"
  * What3Words.com: -- "rubble.occurs.holds"
  * WhatFreeWords.org: -- "burst.fully.things"
  -- TODO -- global location number
),

-- San Francisco + Ferry Building
(
  * id: 650044c3f694a056d370ad88dc75aa7b
  "Ferry Building in San Francisco" -- name

  -- Postal contact:
  * addressee: -- "Ferry Building"
  * street_address: -- "1 Ferry Building"
  * premise_address: -- "Lost & Found"
  * locality_name: -- "San Francisco"
  * region_code: -- "CA"
  * postal_code: -- "94111"
  * country_code: -- "US"
  * continent_code: -- "NA"
  * neighborhood_name: -- "Downtown"

  -- Telephone: 1 (415) 983-8007 = Lost & Found

  -- Geographic point:
  * latitude: -- 37.795563
  * longitude: -- -122.393312

  -- Geo codes:
  * https://plus.codes: -- "849VQJW4+6M"
  * https://what3words.com: -- "banks.issues.socket"
  * https://whatfreewords.org: -- "solid.cracks.solar"
  -- TODO -- global location number
),

-- New York + Public Library
(
  * id: c1346940d621bb901eb2ea3f904f5229
  "Public Library in San Francisco" -- name

  -- Postal contact:
  * addressee: -- "NYPL"
  * street_address: -- ""
  * premise_address: -- ""
  * locality_name: -- "New York"
  * region_code: -- "NY"
  * postal_code: -- ""
  * country_code: -- "US"
  * continent_code: -- "NA"
  * neighborhood_name: -- "Downtown"

  -- Telephone: 1 (415) ???-???? = ?

  -- Geographic point:
  * latitude: --
  * longitude: --

  -- Geo codes:
  * https://plus.codes: -- ""
  * https://what3words.com: -- ""
  * https://whatfreewords.org: -- ""
  -- TODO -- global location number
);

-- San Francisco + Public Library
(
  * id: 8188e32e580c55d15d1ccd14373a2f88
  "Public Library in San Francisco" -- name

  -- Postal contact:
  * addressee: -- "SFPL"
  * street_address: -- ""
  * premise_address: -- ""
  * locality_name: -- "San Francisco"
  * region_code: -- "CA"
  * postal_code: -- ""
  * country_code: -- "US"
  * continent_code: -- "NA"
  * neighborhood_name: -- "Downtown"

  -- Telephone: 1 (415) ???-???? = ?

  -- Geographic point:
  * latitude: --
  * longitude: --

  -- Geo codes:
  * https://plus.codes: -- ""
  * https://what3words.com: -- ""
  * https://whatfreewords.org: -- ""
  -- TODO -- global location number
)


-- North Pole
(
  * id: decb4d70ba8fe75f5a40d99bc884a1fd
  "North Pole" -- name

  -- Postal contact:
  * addressee: -- ""
  * street_address: -- ""
  * premise_address: -- ""
  * locality_name: -- ""
  * region_code: -- ""
  * postal_code: -- ""
  * country_code: -- ""
  * continent_code: -- ""
  * neighborhood_name: -- ""

  -- Telephone: ? = ?

  -- Geographic point:
  * latitude: --
  * longitude: --

  -- Geo codes:
  * https://plus.codes: -- ""
  * https://what3words.com: -- ""
  * https://whatfreewords.org: -- ""
  * global location number: -- ""
)

-- South Pole
(
  * id: 3263f3d7175b51d3365e7f40d32ab654
  "South Pole" -- name

  -- Postal contact:
  * addressee: -- ""
  * street_address: -- ""
  * premise_address: -- ""
  * locality_name: -- ""
  * region_code: -- ""
  * postal_code: -- ""
  * country_code: -- ""
  * continent_code: -- ""
  * neighborhood_name: -- ""

  -- Telephone: ? = ?

  -- Geographic point:
  * latitude: --
  * longitude: --

  -- Geo codes:
  * https://plus.codes: -- ""
  * https://what3words.com: -- ""
  * https://whatfreewords.org: -- ""
  * global location number: -- ""
);
INSERT INTO postal_contacts VALUES

-- example: New York + Grand Central
(
  * id: f10bf169bbc1df76dc18dd007e09581a

  -- Postal-related
  * country_text: "US"
  * region_text: "NY"
  * locality_text: "New York"
  * neighborhood_text: "Midtown"
  * postal_code_text: "10017"
  * street_address_text: "89 E 42nd St"
  * premise_address_text: "Master""s Office"
  "1001710017" -- global_location_number_text (fake)
),

-- example: San Francisco + Ferry Building
(
  * id: d819c808f9d6f7b8c3649657693b798b

  -- Postal-related
  * country_text: "US"
  * region_text: "CA"
  * locality_text: "San Francisco"
  * neighborhood_text: "Downtown"
  * postal_code_text: "94111"
  * street_address_text: "1 Ferry Building"
  * premise_address_text: "Lost & Found"
  "9411194111" -- global_location_number_text (fake)
);
-- Example of tags that are each a simple hashtag word
--
-- Words:
--
--   * "newyork" is our example hashtag for New York
--
--   * "sanfrancisco" is our example hashtag for San Francisco
--
INSERT INTO tags VALUES

-- example: tag for New York
(
  * id: 353fc6f3bfc3c56a5a687f9a986af0da

  -- Tag-related
  * set_id for Twitter: 6a8c63f0505bb15f17f13ecc0265f450
  * parent_id: NULL
  "newyork" -- text

),

-- example: tag for San Francisco
(
  * id: 3bb2085aa5bce9506452fe8ebb9d0103

  -- Tag-related
  * set_id for Twitter: 6a8c63f0505bb15f17f13ecc0265f450
  * parent_id: NULL
  "sanfrancisco" -- text

);
-- Example of tags that are geographic codes for places.
--
-- Codes:
--
--   * [Open Location Code](https://plus.codes)
--
--   * [What3Words](https://what3words.com)
--
--   * [WhatFreeWords](https://whatfreewords.org)
--
-- Places:
--
--   * New York Grand Central
--
--   * San Francisco Ferry Building
--
INSERT INTO tags VALUES

-- example: Grand Central, New York, NY, US + Open Location Code
(
  * id: 353fc6f3bfc3c56a5a687f9a986af0da

  -- Code-related
  * set_id for Open Location Code: 03d0ca793b075f06f2fb6eb41084abd5
  * parent_id: NULL
  * text: "87G8Q23F+34"
  "Grand Central, New York, NY, US + Open Location Code" -- description
),

-- example: Grand Central, New York, NY, US + What3Words
(
  * id: c2d3cea54d44a64ad5093c5aaa7076ae

  -- Code-related
  * set_id for What3Words: b712df2becc88dcb7201572e1bbc0980
  * parent_id: NULL
  * text: "rubble.occurs.holds"
  "Grand Central, New York, NY, US + What3Words" -- description
),

-- example: Grand Central, New York, NY, US + WhatFreeWords
(
  * id: 6e832771f5f844deabce47ebbfc8eba0

  -- Code-related
  * set_id for WhatFreeWords: fb126177afe10f5dbe512449a81df9f3
  * parent_id: NULL
  * text: "burst.fully.things"
  "Grand Central, New York, NY, US + WhatFreeWords" -- description
),

-- example: Ferry Building, San Francisco, CA, US + Open Location Code
(
  * id: a15b731ccf676e1340caa969fc3a43cc

  -- Code-related
  * set_id for Open Location Code: 03d0ca793b075f06f2fb6eb41084abd5
  * parent_id: NULL
  * text: "849VQJW4+6M"
  "Ferry Building, San Francisco, CA, US + Open Location Code" -- description
),

-- example: Ferry Building, San Francisco, CA, US + What3Words
(
  * id: 96832a0db64a21acf88fa619ce08b93a

  -- Code-related
  * set_id for What3Words: b712df2becc88dcb7201572e1bbc0980
  * parent_id: NULL
  * text: "banks.issues.socket"
  "Ferry Building, San Francisco, CA, US + What3Words" -- description
),

-- example: Ferry Building, San Francisco, CA, US + WhatFreeWords
(
  * id: 4a7b52bd2ec81616100990b38fa6fcc6

  -- Code-related
  * set_id for WhatFreeWords: fb126177afe10f5dbe512449a81df9f3
  * parent_id: NULL
  * text: "solid.cracks.solar"
  "Ferry Building, San Francisco, CA, US + WhatFreeWords" -- description
);
INSERT INTO phone_contacts VALUES

-- example: New York + Grand Central + telephone for Master"s Office
(
  * id: 8e238bdbf3b6c189f9e2ed65b2efbb45

  -- Telephone-related
  * label: "Master""s Office"
  * number_text: "1 (212) 340-2583"
  -- E.164-related -- see https://en.wikipedia.org/wiki/E.164
  * e164_text: "12123402583"
  * e164_country_code: "1"
  * e164_national_destination_code: "212"
  * e164_group_identification_code: ""
  * e164_trial_identification_code: ""
  "3402583" -- e164_subscriber_number
),

-- example: San Francisco + Ferry Building + telephone for Lost & Found
(
  * id: 7ea1eb5f6d9075eaa93d12a602dfddb5

  -- Telephone-related
  * label: "Lost & Found"
  * number_text: "1 (415) 983-8007"
  -- E.164-related -- see https://en.wikipedia.org/wiki/E.164
  * e164_text: "14159838007"
  * e164_country_code: "1"
  * e164_national_destination_code: "415"
  * e164_group_identification_code: ""
  * e164_trial_identification_code: ""
  "4159838007" -- e164_subscriber_number
);


## Things (fruits)

example: apple

  * id: d5c7802ecf25359ddc7dde71074f0132

  * name: "apple"

example: banana

  * id: deabb3e6a944fd07d5e83de4a3a237b6

  * name: "banana"

example: cherry

  * id: dd17563ba36c20fd4900cc819b1aa45e

  name: "cherry"

example: dewberry

  * id: 2b543220a8ea7b20a4e2869dae62e3d4

  * name: "dewberry"

example: elderberry

  * id: d42507da2bbda9c424aca0a268ef5bee

  * name: "elderberry"

example: fig

  * id: 9d71ef36473db33ddc5526bd628e6adb

  * name: "fig"
