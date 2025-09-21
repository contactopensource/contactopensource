#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.locale \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:char \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:url \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:url \
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:url \
    --attribute locale_id:locale.id \
    --attribute text:text \
    --attribute language_code:text \
    --attribute country_code:text \
    --attribute script_code:text \
    --attribute region_code:text \
    --attribute variant_code:text \
    --attribute decimal_separator:text \
    --attribute grouping_separator:text \
    --attribute currency_name:text \
    --attribute currency_code:text \
    --attribute currency_symbol:text \
    --attribute quotation_start_delimiter:text \
    --attribute quotation_stop_delimiter:text \

mix ash.codegen create_locale
mix ash.migrate
