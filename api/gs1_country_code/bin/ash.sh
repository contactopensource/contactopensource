#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Code.gs1_country_codes \
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
    --attribute name:string \
    --attribute subname:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute sign:string \
    --attribute kind:string \
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
    --attribute code:digit \
    --attribute country_name:string \
    --attribute explanation:text \

mix ash.codegen create_gs1_country_codes
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_gs1_country_codes.exs

mkdir -p lib/my_app_web/live/gs1_country_codes
touch lib/my_app_web/live/gs1_country_codes/form_live.ex
touch lib/my_app_web/live/gs1_country_codes/index_live.ex
touch lib/my_app_web/live/gs1_country_codes/show_live.ex

mkdir -p test/my_app_web/live/gs1_country_codes
touch test/my_app_web/live/gs1_country_codes/form_live.ex
touch test/my_app_web/live/gs1_country_codes/index_live.ex
touch test/my_app_web/live/gs1_country_codes/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/gs1_country_codes", Gs1CountryCodes.IndexLive
live "/gs1_country_codes/new", Gs1CountryCodes.FormLive, :new
live "/gs1_country_codes/:id", Gs1CountryCodes.ShowLive
live "/gs1_country_codes/:id/edit", Gs1CountryCodes.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/code/gs1_country_code.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
