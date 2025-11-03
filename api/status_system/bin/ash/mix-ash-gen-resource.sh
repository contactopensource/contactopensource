#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.status.StatusSystem \
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
    --attribute key:string \
    --attribute formal_name:string \

mix ash.codegen create_status_systems
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_status_systems.exs
touch test/my_app/my_domain/status_system.exs

mkdir -p lib/my_app_web/live/status_systems
touch lib/my_app_web/live/status_systems/form_live.ex
touch lib/my_app_web/live/status_systems/index_live.ex
touch lib/my_app_web/live/status_systems/show_live.ex

mkdir -p test/my_app_web/live/status_systems
touch test/my_app_web/live/status_systems/form_test.exs
touch test/my_app_web/live/status_systems/index_test.exs
touch test/my_app_web/live/status_systems/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/status_systems", StatusSystems.IndexLive
live "/status_systems/new", StatusSystems.FormLive, :new
live "/status_systems/:id", StatusSystems.ShowLive
live "/status_systems/:id/edit", StatusSystems.FormLive, :edit

If there is a parent, then edit file lib/my_app/status_system.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/status/status_system.ex
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
#     index[:key] \
#     index[:formal_name] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
