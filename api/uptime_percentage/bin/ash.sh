#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.uptime_percentages \
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
    --attribute actual:numeric \
    --attribute target:numeric \
    --attribute ratio:numeric \
    --attribute unit:string \
    --attribute description:string \

mix ash.codegen create_uptime_percentages
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_uptime_percentages.exs

mkdir -p lib/my_app_web/live/uptime_percentages
touch lib/my_app_web/live/uptime_percentages/form_live.ex
touch lib/my_app_web/live/uptime_percentages/index_live.ex
touch lib/my_app_web/live/uptime_percentages/show_live.ex

mkdir -p test/my_app_web/live/uptime_percentages
touch test/my_app_web/live/uptime_percentages/form_live.ex
touch test/my_app_web/live/uptime_percentages/index_live.ex
touch test/my_app_web/live/uptime_percentages/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/uptime_percentages", UptimePercentages.IndexLive
live "/uptime_percentages/new", UptimePercentages.FormLive, :new
live "/uptime_percentages/:id", UptimePercentages.ShowLive
live "/uptime_percentages/:id/edit", UptimePercentages.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/uptime_percentage.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
