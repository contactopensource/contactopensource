#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.MicrodataItem \
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
    --attribute itemtype:URL \
    --attribute itemprop:text \

mix ash.codegen create_microdata_items
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_microdata_items.exs
touch test/my_app/my_domain/microdata_item.exs

mkdir -p lib/my_app_web/live/microdata_items
touch lib/my_app_web/live/microdata_items/form_live.ex
touch lib/my_app_web/live/microdata_items/index_live.ex
touch lib/my_app_web/live/microdata_items/show_live.ex

mkdir -p test/my_app_web/live/microdata_items
touch test/my_app_web/live/microdata_items/form_test.exs
touch test/my_app_web/live/microdata_items/index_test.exs
touch test/my_app_web/live/microdata_items/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/microdata_items", MicrodataItems.IndexLive
live "/microdata_items/new", MicrodataItems.FormLive, :new
live "/microdata_items/:id", MicrodataItems.ShowLive
live "/microdata_items/:id/edit", MicrodataItems.FormLive, :edit

If there is a parent, then edit file lib/my_app/microdata_item.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/microdata_item.ex
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
