#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.united_kingdom_government_digital_and_data_profession_capability_framework_roles \
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
    --attribute family_id:united_kingdom_government_digital_and_data_profession_capability_framework_role_family.id \
    --attribute name:string \
    --attribute url:text \
    --attribute description_as_markdown:markdown \
    --attribute level_name:string \
    --attribute level_description_as_markdown:markdown \
    --attribute senior_civil_service_flag:boolean \

mix ash.codegen create_united_kingdom_government_digital_and_data_profession_capability_framework_roles
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_united_kingdom_government_digital_and_data_profession_capability_framework_roles.exs

mkdir -p lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles
touch lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/form_live.ex
touch lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/index_live.ex
touch lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/show_live.ex

mkdir -p test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles
touch test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/form_live.ex
touch test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/index_live.ex
touch test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/united_kingdom_government_digital_and_data_profession_capability_framework_roles", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoles.IndexLive
live "/united_kingdom_government_digital_and_data_profession_capability_framework_roles/new", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoles.FormLive, :new
live "/united_kingdom_government_digital_and_data_profession_capability_framework_roles/:id", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoles.ShowLive
live "/united_kingdom_government_digital_and_data_profession_capability_framework_roles/:id/edit", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoles.FormLive, :edit
EOF
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
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
