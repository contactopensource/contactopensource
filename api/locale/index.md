# locale


A locale (in software) is a set of parameters for user preferences.


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

  * currency_name: text - example: United States Dollar

  * currency_code: text - example: 'USD' means United States Dollar

  * currency_symbol: text - example: '$' is United States Dollar

Quotations:

  * quotation_start_delimiter: text - example: '“' (U+201C) is left double quotation mark

  * quotation_stop_delimiter: text - example: '”' (U+201D) is right double quotation mark

