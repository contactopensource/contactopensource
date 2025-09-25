#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoleFamily \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \

mix ash.codegen create_united_kingdom_government_digital_and_data_profession_capability_framework_role_family
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/my_domain/united_kingdom_government_digital_and_data_profession_capability_framework_role_family.ex
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
