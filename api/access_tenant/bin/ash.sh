#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Access.AccessTenant \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_access_tenant
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/access/access_tenant.ex
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
