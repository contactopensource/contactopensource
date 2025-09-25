#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRole \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:string \
    --attribute lock_version:integer \
    --attribute created_at:timestamp \
    --attribute created_by:url \
    --attribute updated_at:timestamp \
    --attribute updated_by:url \
    --attribute deleted_at:timestamp \
    --attribute deleted_by:url \
    --attribute locale_id:locale.id \
    --attribute family_id:united_kingdom_government_digital_and_data_profession_capability_framework_role_family.id \
    --attribute name:string \
    --attribute url:url \
    --attribute description:string \
    --attribute level_name:string \
    --attribute level_description:string \
    --attribute senior_civil_service_flag:boolean \

mix ash.codegen create_united_kingdom_government_digital_and_data_profession_capability_framework_role
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/my_domain/united_kingdom_government_digital_and_data_profession_capability_framework_role.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:sign]
#     index[:created_at]
#     index[:created_by]
#     index[:updated_at]
#     index[:updated_by]
#     index[:deleted_at]
#     index[:deleted_by]
#     index[:locale_id]
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
