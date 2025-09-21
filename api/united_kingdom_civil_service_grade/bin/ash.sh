#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.UnitedKingdomCivilServiceGrade \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute step:integer \
    --attribute label:string \
    --attribute abbreviation:string \
    --attribute minimum_salary:integer \
    --attribute definition:string \

mix ash.codegen create_united_kingdom_civil_service_grade
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/codes/united_kingdom_civil_service_grade.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:step]
#     index[:label]
#     index[:abbreviation]
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
