#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.MedicationStem \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute stem:string \
    --attribute class:string \
    --attribute examples:string \

mix ash.codegen create_medication_stems
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_medication_stems.exs
touch test/my_app/my_domain/medication_stem.exs

mkdir -p lib/my_app_web/live/medication_stems
touch lib/my_app_web/live/medication_stems/form_live.ex
touch lib/my_app_web/live/medication_stems/index_live.ex
touch lib/my_app_web/live/medication_stems/show_live.ex

mkdir -p test/my_app_web/live/medication_stems
touch test/my_app_web/live/medication_stems/form_test.exs
touch test/my_app_web/live/medication_stems/index_test.exs
touch test/my_app_web/live/medication_stems/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/medication_stems", MedicationStems.IndexLive
live "/medication_stems/new", MedicationStems.FormLive, :new
live "/medication_stems/:id", MedicationStems.ShowLive
live "/medication_stems/:id/edit", MedicationStems.FormLive, :edit

If there is a parent, then edit file lib/my_app/medication_stem.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/medication_stem.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:created_at] \
#     index[:created_by] \
#     index[:updated_at] \
#     index[:updated_by] \
#     index[:retired_at] \
#     index[:retired_by] \
#     index[:locale_code] \
#     index[:tagging] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
