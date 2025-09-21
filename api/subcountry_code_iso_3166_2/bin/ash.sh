#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.SubcountryCodeIso3166Dash2 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute alpha_2:string(2):string \
    --attribute country_code_iso_3166_1_id:references \

mix ash.codegen create_subcountry_code_iso_3166_2
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/my_domain/subcountry_code_iso_3166_2.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
