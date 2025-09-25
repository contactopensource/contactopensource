#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.Codec \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:string \
    --attribute lock_version:integer \
    --attribute created_at:timestamp \
    --attribute created_by:url \
    --attribute updated_at:timestamp \
    --attribute updated_by:url \
    --attribute deleted_at:timestamp \
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
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
