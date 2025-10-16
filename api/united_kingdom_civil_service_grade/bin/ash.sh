#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Codes.united_kingdom_civil_service_grades \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute step:integer \
    --attribute label:string \
    --attribute abbreviation:string \
    --attribute minimum_salary:integer \
    --attribute definition:string \

mix ash.codegen create_united_kingdom_civil_service_grades
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_united_kingdom_civil_service_grades.exs

mkdir -p lib/my_app_web/live/united_kingdom_civil_service_grades
touch lib/my_app_web/live/united_kingdom_civil_service_grades/form_live.ex
touch lib/my_app_web/live/united_kingdom_civil_service_grades/index_live.ex
touch lib/my_app_web/live/united_kingdom_civil_service_grades/show_live.ex

mkdir -p test/my_app_web/live/united_kingdom_civil_service_grades
touch test/my_app_web/live/united_kingdom_civil_service_grades/form_live.ex
touch test/my_app_web/live/united_kingdom_civil_service_grades/index_live.ex
touch test/my_app_web/live/united_kingdom_civil_service_grades/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/united_kingdom_civil_service_grades", UnitedKingdomCivilServiceGrades.IndexLive
live "/united_kingdom_civil_service_grades/new", UnitedKingdomCivilServiceGrades.FormLive, :new
live "/united_kingdom_civil_service_grades/:id", UnitedKingdomCivilServiceGrades.ShowLive
live "/united_kingdom_civil_service_grades/:id/edit", UnitedKingdomCivilServiceGrades.FormLive, :edit
EOF
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
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
