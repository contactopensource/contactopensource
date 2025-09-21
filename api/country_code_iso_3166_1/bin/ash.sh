#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.CountryCodeIso3166Dash1 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute alpha_2:string(2):string \

mix ash.codegen create_country_code_iso_3166_1
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/my_domain/country_code_iso_3166_1.ex
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
