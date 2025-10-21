#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.TotalProjectControl \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute dipp:numeric \
    --attribute dipp_progress_index_ratio:numeric \
    --attribute dipp_progress_index_numerator:numeric \
    --attribute dipp_progress_index_denominator:numeric \
    --attribute expected_monetary_value:numeric \
    --attribute cost_estimate_to_complete:numeric \

mix ash.codegen create_total_project_controls
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_total_project_controls.exs

mkdir -p lib/my_app_web/live/total_project_controls
touch lib/my_app_web/live/total_project_controls/form_live.ex
touch lib/my_app_web/live/total_project_controls/index_live.ex
touch lib/my_app_web/live/total_project_controls/show_live.ex

mkdir -p test/my_app_web/live/total_project_controls
touch test/my_app_web/live/total_project_controls/form_live.ex
touch test/my_app_web/live/total_project_controls/index_live.ex
touch test/my_app_web/live/total_project_controls/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/total_project_controls", TotalProjectControls.IndexLive
live "/total_project_controls/new", TotalProjectControls.FormLive, :new
live "/total_project_controls/:id", TotalProjectControls.ShowLive
live "/total_project_controls/:id/edit", TotalProjectControls.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/total_project_control.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
