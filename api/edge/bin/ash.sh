#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Graph.Edge \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:string \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:text \
    --attribute locale_code:string \
    --attribute sign:string \
    --attribute kind:string \
    --attribute title:string \
    --attribute subtitle:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute avatar_image_400x400_url:text \
    --attribute avatar_image_400x400_alt:text \
    --attribute main_image_1080x1080_url:text \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:text \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:text \
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
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
