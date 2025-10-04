#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.InternationalLaborOrganizationInternationalStandardClassificationOfOccupations2008 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute code:string \
    --attribute name:string \
    --attribute definition:string \

mix ash.codegen create_international_standard_classification_of_occupations_2008
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/codes/international_standard_classification_of_occupations_2008.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
