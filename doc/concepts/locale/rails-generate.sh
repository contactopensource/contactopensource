#!/bin/sh
set -euf

rails generate scaffold locale \
	"$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    text:string:index \
    language_code:string:index \
    country_code:string:index \
    script_code:string:index \
    region_code:string:index \
    variant_code:string:index \
    decimal_separator:string \
    grouping_separator:string \
    currency_code:string \
    currency_symbol:string \
    quotation_start_delimiter:string \
    quotation_stop_delimiter:string \
    collator_identifier:text \
    collation_identifier:text \
    exemplar_character_set:text \
    calendar_system:references \
    measurement_system:references \
