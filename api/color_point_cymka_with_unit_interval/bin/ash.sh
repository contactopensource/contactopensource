#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.ColorPointCymkaWithUnitInterval \
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
    --attribute cyan:unit_interval \
    --attribute yellow:unit_interval \
    --attribute magenta:unit_interval \
    --attribute black:unit_interval \
    --attribute alpha:unit_interval \

mix ash.codegen create_color_point_cymka_with_unit_intervals
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_color_point_cymka_with_unit_intervals.exs

mkdir -p lib/my_app_web/live/color_point_cymka_with_unit_intervals
touch lib/my_app_web/live/color_point_cymka_with_unit_intervals/form_live.ex
touch lib/my_app_web/live/color_point_cymka_with_unit_intervals/index_live.ex
touch lib/my_app_web/live/color_point_cymka_with_unit_intervals/show_live.ex

mkdir -p test/my_app_web/live/color_point_cymka_with_unit_intervals
touch test/my_app_web/live/color_point_cymka_with_unit_intervals/form_live.ex
touch test/my_app_web/live/color_point_cymka_with_unit_intervals/index_live.ex
touch test/my_app_web/live/color_point_cymka_with_unit_intervals/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/color_point_cymka_with_unit_intervals", ColorPointCymkaWithUnitIntervals.IndexLive
live "/color_point_cymka_with_unit_intervals/new", ColorPointCymkaWithUnitIntervals.FormLive, :new
live "/color_point_cymka_with_unit_intervals/:id", ColorPointCymkaWithUnitIntervals.ShowLive
live "/color_point_cymka_with_unit_intervals/:id/edit", ColorPointCymkaWithUnitIntervals.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/color/color_point_cymka_with_unit_interval.ex
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
