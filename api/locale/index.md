# locale


A locale (in software) is a set of parameters for user preferences.

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

Dialect:

* text: text - example: 'en-US' is English language in United States country

* language_code: text - example: 'en' is English

* country_code: text - example: 'US' is United States

* script_code: text - example: 'Latn' is Latin script

* region_code: text - example: 'QO' is Outlying Oceania

* variant_code: text - example: 'TH' is Thai digit shapes

Separators:

* decimal_separator: text - example: '.' is the decimal separator of 'en-US'

* grouping_separator: text - example: ',' is the grouping separator of 'en-US'

Currency:

* currency_code: text - example: 'USD' is United States Dollar

* currency_symbol: text - example: '$' is United States Dollar

Quotations:

* quotation_start_delimiter: text - example: '“' (U+201C) is left double quotation mark

* quotation_stop_delimiter: text - example: '”' (U+201D) is right double quotation mark

