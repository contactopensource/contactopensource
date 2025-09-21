#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.UnitedKingdomStandardOccupationalClassification2020 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute code:string \
    --attribute title:string \
    --attribute definition:string \

mix ash.codegen create_united_kingdom_standard_occupational_classification_2020
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/codes/united_kingdom_standard_occupational_classification_2020.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:code]
#     index[:title]
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
