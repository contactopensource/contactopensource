#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.united_kingdom_standard_occupational_classification_2020s \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute code:string \
    --attribute title:string \
    --attribute definition:string \

mix ash.codegen create_united_kingdom_standard_occupational_classification_2020s
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_united_kingdom_standard_occupational_classification_2020s.exs

mkdir -p lib/my_app_web/live/united_kingdom_standard_occupational_classification_2020s
touch lib/my_app_web/live/united_kingdom_standard_occupational_classification_2020s/form_live.ex
touch lib/my_app_web/live/united_kingdom_standard_occupational_classification_2020s/index_live.ex
touch lib/my_app_web/live/united_kingdom_standard_occupational_classification_2020s/show_live.ex

mkdir -p test/my_app_web/live/united_kingdom_standard_occupational_classification_2020s
touch test/my_app_web/live/united_kingdom_standard_occupational_classification_2020s/form_live.ex
touch test/my_app_web/live/united_kingdom_standard_occupational_classification_2020s/index_live.ex
touch test/my_app_web/live/united_kingdom_standard_occupational_classification_2020s/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/united_kingdom_standard_occupational_classification_2020s", UnitedKingdomStandardOccupationalClassification2020S.IndexLive
live "/united_kingdom_standard_occupational_classification_2020s/new", UnitedKingdomStandardOccupationalClassification2020S.FormLive, :new
live "/united_kingdom_standard_occupational_classification_2020s/:id", UnitedKingdomStandardOccupationalClassification2020S.ShowLive
live "/united_kingdom_standard_occupational_classification_2020s/:id/edit", UnitedKingdomStandardOccupationalClassification2020S.FormLive, :edit
EOF
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
#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
