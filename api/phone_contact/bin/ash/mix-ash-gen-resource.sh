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
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:text \
    --attribute locale_code:string \
    --attribute tagging:string \
    --attribute name:string \
    --attribute subname:string \
    --attribute slug:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute sign:text \
    --attribute kind:string \
    --attribute star_count:integer \
    --relationship belongs_to:quick_response_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:universal_product_code_id:MyApp.MyDomain.MyModel \
    --attribute avatar_image_400x400_url:text \
    --attribute avatar_image_400x400_alt:text \
    --attribute main_image_1080x1080_url:text \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:text \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:text \
    --attribute main_image_1080x1920_alt:text \
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
touch test/my_app/my_domain/phone_contact.exs

mkdir -p lib/my_app_web/live/phone_contacts
touch lib/my_app_web/live/phone_contacts/form_live.ex
touch lib/my_app_web/live/phone_contacts/index_live.ex
touch lib/my_app_web/live/phone_contacts/show_live.ex

mkdir -p test/my_app_web/live/phone_contacts
touch test/my_app_web/live/phone_contacts/form_test.exs
touch test/my_app_web/live/phone_contacts/index_test.exs
touch test/my_app_web/live/phone_contacts/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/phone_contacts", PhoneContacts.IndexLive
live "/phone_contacts/new", PhoneContacts.FormLive, :new
live "/phone_contacts/:id", PhoneContacts.ShowLive
live "/phone_contacts/:id/edit", PhoneContacts.FormLive, :edit

If there is a parent, then edit file lib/my_app/phone_contact.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
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
#     index[:created_at] \
#     index[:created_by] \
#     index[:updated_at] \
#     index[:updated_by] \
#     index[:retired_at] \
#     index[:retired_by] \
#     index[:locale_code] \
#     index[:tagging] \
#     index[:name] \
#     index[:subname] \
#     index[:slug] \
#     index[:sign] \
#     index[:kind] \
#     index[:number_text] \
#     index[:e164_text] \
#     index[:e164_country_code] \
#     index[:e164_national_destination_code] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
