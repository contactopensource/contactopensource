#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.Event \
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
    --attribute name:string \
    --attribute subname:string \
    --attribute slug:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute sign:text \
    --attribute kind:string \
    --attribute star_count:integer \
    --relationship belongs_to:quick_response_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:universal_product_code_id:MyApp.MyDomain.MyModel \
    --attribute avatar_image_400x400_url:text \
    --attribute avatar_image_400x400_alt:text \
    --attribute main_image_1080x1080_url:text \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:text \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:text \
    --attribute main_image_1080x1920_alt:text \
    --attribute start_timestamp_local:timestamp_utc_usec \
    --attribute stop_timestamp_local:timestamp_utc_usec \
    --attribute start_timestamp_utc:timestamp_utc_usec \
    --attribute stop_timestamp_utc:timestamp_utc_usec \
    --attribute duration_as_seconds:count \
    --attribute recurring:boolean \
    --attribute recurring_description:text \

mix ash.codegen create_events
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_events.exs
touch test/my_app/my_domain/event.exs

mkdir -p lib/my_app_web/live/events
touch lib/my_app_web/live/events/form_live.ex
touch lib/my_app_web/live/events/index_live.ex
touch lib/my_app_web/live/events/show_live.ex

mkdir -p test/my_app_web/live/events
touch test/my_app_web/live/events/form_test.exs
touch test/my_app_web/live/events/index_test.exs
touch test/my_app_web/live/events/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/events", Events.IndexLive
live "/events/new", Events.FormLive, :new
live "/events/:id", Events.ShowLive
live "/events/:id/edit", Events.FormLive, :edit

If there is a parent, then edit file lib/my_app/event.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/event.ex
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
#     index[:name] \
#     index[:subname] \
#     index[:slug] \
#     index[:sign] \
#     index[:kind] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
