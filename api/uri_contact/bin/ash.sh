#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Contact.UriContact \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_uri_contacts
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_uri_contacts.exs

mkdir -p lib/my_app_web/live/uri_contacts
touch lib/my_app_web/live/uri_contacts/form_live.ex
touch lib/my_app_web/live/uri_contacts/index_live.ex
touch lib/my_app_web/live/uri_contacts/show_live.ex

mkdir -p test/my_app_web/live/uri_contacts
touch test/my_app_web/live/uri_contacts/form_live.ex
touch test/my_app_web/live/uri_contacts/index_live.ex
touch test/my_app_web/live/uri_contacts/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/uri_contacts", UriContacts.IndexLive
live "/uri_contacts/new", UriContacts.FormLive, :new
live "/uri_contacts/:id", UriContacts.ShowLive
live "/uri_contacts/:id/edit", UriContacts.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/contact/uri_contact.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
