#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.PhoneContact \
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
    --attribute label:text \
    --attribute number_text:text \
    --attribute e164_text:string \
    --attribute e164_country_code:string \
    --attribute e164_national_destination_code:string \
    --attribute e164_group_identification_code:string \
    --attribute e164_trial_identification_code:string \
    --attribute e164_subscriber_number:string \

mix ash.codegen create_phone_contact
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/my_domain/phone_contact.ex
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
#     index[:number_text]
#     index[:e164_text]
#     index[:e164_country_code]
#     index[:e164_national_destination_code]
