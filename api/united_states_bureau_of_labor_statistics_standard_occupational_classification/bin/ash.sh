#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.UnitedStatesBureauOfLaborStatisticsStandardOccupationalClassification2018 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute group:string \
    --attribute code:string \
    --attribute title:string \
    --attribute definition:text \

mix ash.codegen create_united_states_bureau_of_labor_statistics_standard_occupational_classification_2018
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/my_domain/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:group]
#     index[:code]
#     index[:title]
#     index[:definition]
