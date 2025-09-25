#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.locale \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:string \
    --attribute lock_version:integer \
    --attribute created_at:timestamp \
    --attribute created_by:url \
    --attribute updated_at:timestamp \
    --attribute updated_by:url \
    --attribute deleted_at:timestamp \
    --attribute deleted_by:url \
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
#     index[:sign]
#     index[:created_at]
#     index[:created_by]
#     index[:updated_at]
#     index[:updated_by]
#     index[:deleted_at]
#     index[:deleted_by]
#     index[:locale_id]
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
