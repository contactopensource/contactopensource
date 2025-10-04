#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.locale \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:text \
    --attribute locale_code:string \
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

### Extra ###
#
# Edit file lib/my_app/my_domain/locale.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
