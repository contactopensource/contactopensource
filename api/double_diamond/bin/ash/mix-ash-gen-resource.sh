#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.plan.DoubleDiamond \
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
    --attribute phase_1_title:text \
    --attribute phase_1_smart:smart \
    --attribute phase_1_resolve_wall_time:duration \
    --attribute phase_1_resolve_work_time:duration \
    --attribute phase_1_reliability_unit_interval:numeric \
    --attribute phase_2_title:text \
    --attribute phase_2_smart:smart \
    --attribute phase_2_wall_time:duration \
    --attribute phase_2_work_time:duration \
    --attribute phase_2_total_count:count \
    --attribute phase_2_error_count:count \
    --attribute phase_2_resolve_wall_time:duration \
    --attribute phase_2_resolve_work_time:duration \
    --attribute phase_2_reliability_unit_interval:numeric \
    --attribute phase_3_title:text \
    --attribute phase_3_smart:smart \
    --attribute phase_3_wall_time:duration \
    --attribute phase_3_work_time:duration \
    --attribute phase_3_total_count:count \
    --attribute phase_3_error_count:count \
    --attribute phase_3_resolve_wall_time:duration \
    --attribute phase_3_resolve_work_time:duration \
    --attribute phase_3_reliability_unit_interval:numeric \
    --attribute phase_4_title:text \
    --attribute phase_4_smart:smart \
    --attribute phase_4_wall_time:duration \
    --attribute phase_4_work_time:duration \
    --attribute phase_4_total_count:count \
    --attribute phase_4_error_count:count \
    --attribute phase_4_resolve_wall_time:duration \
    --attribute phase_4_resolve_work_time:duration \
    --attribute phase_4_reliability_unit_interval:numeric \

mix ash.codegen create_double_diamonds
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_double_diamonds.exs
touch test/my_app/my_domain/double_diamond.exs

mkdir -p lib/my_app_web/live/double_diamonds
touch lib/my_app_web/live/double_diamonds/form_live.ex
touch lib/my_app_web/live/double_diamonds/index_live.ex
touch lib/my_app_web/live/double_diamonds/show_live.ex

mkdir -p test/my_app_web/live/double_diamonds
touch test/my_app_web/live/double_diamonds/form_test.exs
touch test/my_app_web/live/double_diamonds/index_test.exs
touch test/my_app_web/live/double_diamonds/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/double_diamonds", DoubleDiamonds.IndexLive
live "/double_diamonds/new", DoubleDiamonds.FormLive, :new
live "/double_diamonds/:id", DoubleDiamonds.ShowLive
live "/double_diamonds/:id/edit", DoubleDiamonds.FormLive, :edit

If there is a parent, then edit file lib/my_app/double_diamond.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/plan/double_diamond.ex
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
