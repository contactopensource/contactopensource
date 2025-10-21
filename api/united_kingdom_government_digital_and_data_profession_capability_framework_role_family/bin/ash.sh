#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoleFamily \
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

mix ash.codegen create_united_kingdom_government_digital_and_data_profession_capability_framework_role_familys
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_united_kingdom_government_digital_and_data_profession_capability_framework_role_familys.exs

mkdir -p lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys
touch lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys/form_live.ex
touch lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys/index_live.ex
touch lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys/show_live.ex

mkdir -p test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys
touch test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys/form_live.ex
touch test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys/index_live.ex
touch test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoleFamilys.IndexLive
live "/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys/new", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoleFamilys.FormLive, :new
live "/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys/:id", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoleFamilys.ShowLive
live "/united_kingdom_government_digital_and_data_profession_capability_framework_role_familys/:id/edit", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoleFamilys.FormLive, :edit
EOF
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
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
