#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Contact.URIContact \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_uri_contact
mix ash.migrate

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
