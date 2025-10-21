#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.PhoneContact \
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
    --attribute label:text \
    --attribute number_text:text \
    --attribute e164_text:string \
    --attribute e164_country_code:string \
    --attribute e164_national_destination_code:string \
    --attribute e164_group_identification_code:string \
    --attribute e164_trial_identification_code:string \
    --attribute e164_subscriber_number:string \

mix ash.codegen create_phone_contacts
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_phone_contacts.exs

mkdir -p lib/my_app_web/live/phone_contacts
touch lib/my_app_web/live/phone_contacts/form_live.ex
touch lib/my_app_web/live/phone_contacts/index_live.ex
touch lib/my_app_web/live/phone_contacts/show_live.ex

mkdir -p test/my_app_web/live/phone_contacts
touch test/my_app_web/live/phone_contacts/form_live.ex
touch test/my_app_web/live/phone_contacts/index_live.ex
touch test/my_app_web/live/phone_contacts/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/phone_contacts", PhoneContacts.IndexLive
live "/phone_contacts/new", PhoneContacts.FormLive, :new
live "/phone_contacts/:id", PhoneContacts.ShowLive
live "/phone_contacts/:id/edit", PhoneContacts.FormLive, :edit
EOF
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
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
