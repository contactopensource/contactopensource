#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.EarnedValueManagement \
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
    --attribute planned_value:numeric \
    --attribute earned_value:numeric \
    --attribute actual_cost:numeric \
    --attribute cost_variance:numeric \
    --attribute cost_variance_ratio:numeric \
    --attribute cost_performance_index:numeric \
    --attribute schedule_variance:numeric \
    --attribute schedule_variance_ratio:numeric \
    --attribute schedule_performance_index:numeric \

mix ash.codegen create_earned_value_managements
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_earned_value_managements.exs
touch test/my_app/my_domain/earned_value_management.exs

mkdir -p lib/my_app_web/live/earned_value_managements
touch lib/my_app_web/live/earned_value_managements/form_live.ex
touch lib/my_app_web/live/earned_value_managements/index_live.ex
touch lib/my_app_web/live/earned_value_managements/show_live.ex

mkdir -p test/my_app_web/live/earned_value_managements
touch test/my_app_web/live/earned_value_managements/form_test.exs
touch test/my_app_web/live/earned_value_managements/index_test.exs
touch test/my_app_web/live/earned_value_managements/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/earned_value_managements", EarnedValueManagements.IndexLive
live "/earned_value_managements/new", EarnedValueManagements.FormLive, :new
live "/earned_value_managements/:id", EarnedValueManagements.ShowLive
live "/earned_value_managements/:id/edit", EarnedValueManagements.FormLive, :edit

If there is a parent, then edit file lib/my_app/earned_value_management.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/earned_value_management.ex
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
