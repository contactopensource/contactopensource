#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Code.universal_product_codes \
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
    --attribute code:string \
    --attribute image_url:text \
    --attribute image_alt:text \

mix ash.codegen create_universal_product_codes
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_universal_product_codes.exs

mkdir -p lib/my_app_web/live/universal_product_codes
touch lib/my_app_web/live/universal_product_codes/form_live.ex
touch lib/my_app_web/live/universal_product_codes/index_live.ex
touch lib/my_app_web/live/universal_product_codes/show_live.ex

mkdir -p test/my_app_web/live/universal_product_codes
touch test/my_app_web/live/universal_product_codes/form_live.ex
touch test/my_app_web/live/universal_product_codes/index_live.ex
touch test/my_app_web/live/universal_product_codes/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/universal_product_codes", UniversalProductCodes.IndexLive
live "/universal_product_codes/new", UniversalProductCodes.FormLive, :new
live "/universal_product_codes/:id", UniversalProductCodes.ShowLive
live "/universal_product_codes/:id/edit", UniversalProductCodes.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/code/universal_product_code.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
