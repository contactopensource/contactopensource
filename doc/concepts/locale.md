# locale

A `locale` is an internet standard that identifies internationalization and localization, such as for language choices, number formatting choices, quotation formatting choices, etc.

Code attributes:

* text ~ text ~ example: "en-US" is English language in United States country

* language_code ~ text ~ example: "en" is English

* country_code ~ text ~ example: "US" is United States

* script_code ~ text ~ example: "Latn" is Latin script ~ see http://www.unicode.org/iso15924/codelists.html

* region_code ~ text ~ example: "QO" is Outlying Oceania

* variant_code ~ text ~ example: "TH" is Thai digit shapes

Representation attributes:

* decimal_separator ~ text ~ example: "." is the decimal separator of "en-US" ~ see https://en.wikipedia.org/wiki/decimal_separator

* grouping_separator ~ text ~ example: "," is the grouping separator of 'en-US"

* currency_code ~ text ~ example: "USD" is United States Dollar

* currency_symbol ~ text ~ example: "$" is United States Dollar

* quotation_start_delimiter ~ text ~ example: “ (U+201C) is left double quotation mark

* quotation_stop_delimiter ~ text ~ example: ” (U+201D) is right double quotation mark

TODO:

* calendar ~ calendar ~ the calendar for the locale, or the Gregorian calendar as a fallback.

* exemplar_character_set ~ character set ~ the exemplar character set for the locale, or nil if has none

* collation_dentifier ~ text ~ the collation identifier for the locale, or nil if it has none

* collator_identifier ~ text? ~ the collator identifier of the locale

* use_metric_system ~ boolean ~ iff the locale use the metric system
