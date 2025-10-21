#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.InternationalStandardClassificationOfOccupations2008 \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute code:string \
    --attribute name:string \
    --attribute definition_as_markdown:markdown \

mix ash.codegen create_international_standard_classification_of_occupations_2008s
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_international_standard_classification_of_occupations_2008s.exs

mkdir -p lib/my_app_web/live/international_standard_classification_of_occupations_2008s
touch lib/my_app_web/live/international_standard_classification_of_occupations_2008s/form_live.ex
touch lib/my_app_web/live/international_standard_classification_of_occupations_2008s/index_live.ex
touch lib/my_app_web/live/international_standard_classification_of_occupations_2008s/show_live.ex

mkdir -p test/my_app_web/live/international_standard_classification_of_occupations_2008s
touch test/my_app_web/live/international_standard_classification_of_occupations_2008s/form_live.ex
touch test/my_app_web/live/international_standard_classification_of_occupations_2008s/index_live.ex
touch test/my_app_web/live/international_standard_classification_of_occupations_2008s/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/international_standard_classification_of_occupations_2008s", InternationalStandardClassificationOfOccupations2008S.IndexLive
live "/international_standard_classification_of_occupations_2008s/new", InternationalStandardClassificationOfOccupations2008S.FormLive, :new
live "/international_standard_classification_of_occupations_2008s/:id", InternationalStandardClassificationOfOccupations2008S.ShowLive
live "/international_standard_classification_of_occupations_2008s/:id/edit", InternationalStandardClassificationOfOccupations2008S.FormLive, :edit
EOF
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
