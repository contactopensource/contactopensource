#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.Codec \
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
    --attribute sign:string \
    --attribute kind:string \
    --attribute name:string \
    --attribute subname:string \
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
    --attribute name:text \
    --attribute code:text \
    --attribute icon:text \
    --attribute link:text \
    --attribute note:text \
    --attribute creator_name:text \
    --attribute prefer_file_extension:text \
    --attribute prefer_media_type_id:media_type.id \
    --attribute lossy_flag:boolean \
    --attribute floss_flag:boolean \
    --attribute fixed_bit_rate:decimal \
    --attribute variable_bit_rate_minimum:decimal \
    --attribute variable_bit_rate_maximum:decimal \
    --attribute fixed_channel_count:integer \
    --attribute variable_channel_count_minimum:integer \
    --attribute variable_channel_count_maximum:integer \

mix ash.codegen create_codec
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/my_domain/codec.ex
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
