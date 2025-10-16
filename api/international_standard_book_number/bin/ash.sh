#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Code.international_standard_book_numbers \
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
    --attribute code:string \
    --attribute prefix_element:string \
    --attribute registration_group:digit \
    --attribute registrant:string \
    --attribute publication:string \
    --attribute check_digit:digit \

mix ash.codegen create_international_standard_book_numbers
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_international_standard_book_numbers.exs

mkdir -p lib/my_app_web/live/international_standard_book_numbers
touch lib/my_app_web/live/international_standard_book_numbers/form_live.ex
touch lib/my_app_web/live/international_standard_book_numbers/index_live.ex
touch lib/my_app_web/live/international_standard_book_numbers/show_live.ex

mkdir -p test/my_app_web/live/international_standard_book_numbers
touch test/my_app_web/live/international_standard_book_numbers/form_live.ex
touch test/my_app_web/live/international_standard_book_numbers/index_live.ex
touch test/my_app_web/live/international_standard_book_numbers/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/international_standard_book_numbers", InternationalStandardBookNumbers.IndexLive
live "/international_standard_book_numbers/new", InternationalStandardBookNumbers.FormLive, :new
live "/international_standard_book_numbers/:id", InternationalStandardBookNumbers.ShowLive
live "/international_standard_book_numbers/:id/edit", InternationalStandardBookNumbers.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/code/international_standard_book_number.ex
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
