#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Credential.Passport \
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
    --relationship belongs_to:quick_response_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:universal_product_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:country_id:MyApp.MyDomain.MyModel \
    --attribute number_text:text \
    --attribute start_date:date \
    --attribute stop_date:date \
    --attribute four_corner_open_photo_url:text \
    --attribute four_corner_face_photo_url:text \

mix ash.codegen create_passports
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_passports.exs

mkdir -p lib/my_app_web/live/passports
touch lib/my_app_web/live/passports/form_live.ex
touch lib/my_app_web/live/passports/index_live.ex
touch lib/my_app_web/live/passports/show_live.ex

mkdir -p test/my_app_web/live/passports
touch test/my_app_web/live/passports/form_live.ex
touch test/my_app_web/live/passports/index_live.ex
touch test/my_app_web/live/passports/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/passports", Passports.IndexLive
live "/passports/new", Passports.FormLive, :new
live "/passports/:id", Passports.ShowLive
live "/passports/:id/edit", Passports.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/credential/passport.ex
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
