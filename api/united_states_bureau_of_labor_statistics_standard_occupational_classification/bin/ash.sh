#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute group:string \
    --attribute code:string \
    --attribute title:string \
    --attribute definition:text \

mix ash.codegen create_united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s.exs

mkdir -p lib/my_app_web/live/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s
touch lib/my_app_web/live/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s/form_live.ex
touch lib/my_app_web/live/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s/index_live.ex
touch lib/my_app_web/live/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s/show_live.ex

mkdir -p test/my_app_web/live/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s
touch test/my_app_web/live/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s/form_live.ex
touch test/my_app_web/live/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s/index_live.ex
touch test/my_app_web/live/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s", UnitedStatesBureauOfLaborStatisticsStandardOccupationalClassification2018S.IndexLive
live "/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s/new", UnitedStatesBureauOfLaborStatisticsStandardOccupationalClassification2018S.FormLive, :new
live "/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s/:id", UnitedStatesBureauOfLaborStatisticsStandardOccupationalClassification2018S.ShowLive
live "/united_states_bureau_of_labor_statistics_standard_occupational_classification_2018s/:id/edit", UnitedStatesBureauOfLaborStatisticsStandardOccupationalClassification2018S.FormLive, :edit
EOF
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
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
