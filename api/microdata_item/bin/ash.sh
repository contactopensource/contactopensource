#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.MicrodataItem \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:char \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:url \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:url \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:url \
    --attribute locale_id:locale.id \
    --attribute itemtype:URL \
    --attribute itemprop:text \

mix ash.codegen create_microdata_item
mix ash.migrate

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
#     index[:sign]
#     index[:created_at]
#     index[:created_by]
#     index[:updated_at]
#     index[:updated_by]
#     index[:deleted_at]
#     index[:deleted_by]
#     index[:locale_id]
