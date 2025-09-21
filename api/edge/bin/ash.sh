#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Graph.Edge \
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
    --attribute title:string \
    --attribute subtitle:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute avatar_image_400x400_url:url \
    --attribute avatar_image_400x400_alt:url \
    --attribute main_image_1080x1080_url:url \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:url \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:url \
    --attribute main_image_1080x1920_alt:text \
    --attribute emoji:text \
    --attribute star_count:integer \
    --attribute quick_response_code_id:quick_response_code.id \
    --attribute universal_product_code_id:universal_product_code.id \
    --attribute subject_uri:text \
    --attribute subject_database:text \
    --attribute subject_schema:text \
    --attribute subject_table:text \
    --attribute subject_id:id \
    --attribute predicate_uri:text \
    --attribute predicate_database:text \
    --attribute predicate_schema:text \
    --attribute predicate_table:text \
    --attribute predicate_id:id \
    --attribute object_uri:text \
    --attribute object_database:text \
    --attribute object_schema:text \
    --attribute object_table:text \
    --attribute object_id:id \
    --attribute start_at_timestamp_utc:timestamp_utc_usec \
    --attribute stop_at_timestamp_utc:timestamp_utc_usec \
    --attribute count:integer \
    --attribute unit_interval:unit_interval \
    --attribute dual_interval:dual_interval \

mix ash.codegen create_edge
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/graph/edge.ex
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
#     index[:title]
#     index[:subtitle]
