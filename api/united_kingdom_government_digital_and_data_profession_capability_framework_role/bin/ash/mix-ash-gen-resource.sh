#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRole \
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
    --relationship belongs_to:family_id:MyApp.MyDomain.MyModel \
    --attribute name:string \
    --attribute url:text \
    --attribute description_as_markdown:markdown \
    --attribute level_name:string \
    --attribute level_description_as_markdown:markdown \
    --attribute senior_civil_service_flag:boolean \

mix ash.codegen create_united_kingdom_government_digital_and_data_profession_capability_framework_roles
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_united_kingdom_government_digital_and_data_profession_capability_framework_roles.exs
touch test/my_app/my_domain/united_kingdom_government_digital_and_data_profession_capability_framework_role.exs

mkdir -p lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles
touch lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/form_live.ex
touch lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/index_live.ex
touch lib/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/show_live.ex

mkdir -p test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles
touch test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/form_test.exs
touch test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/index_test.exs
touch test/my_app_web/live/united_kingdom_government_digital_and_data_profession_capability_framework_roles/show_test.exs

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:

live "/united_kingdom_government_digital_and_data_profession_capability_framework_roles", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoles.IndexLive
live "/united_kingdom_government_digital_and_data_profession_capability_framework_roles/new", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoles.FormLive, :new
live "/united_kingdom_government_digital_and_data_profession_capability_framework_roles/:id", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoles.ShowLive
live "/united_kingdom_government_digital_and_data_profession_capability_framework_roles/:id/edit", UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkRoles.FormLive, :edit

If there is a parent, then edit file lib/my_app/united_kingdom_government_digital_and_data_profession_capability_framework_role.ex to add:


relationships do

  belongs_to :parent, __MODULE__, allow_nil?: true

end
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
#     index[:created_at] \
#     index[:created_by] \
#     index[:updated_at] \
#     index[:updated_by] \
#     index[:retired_at] \
#     index[:retired_by] \
#     index[:locale_code] \
#     index[:tagging] \
#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
