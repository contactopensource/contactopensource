#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.UnitedKingdomGovernmentDigitalAndDataProfessionCapabilityFrameworkSkill \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:string \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:text \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:text \
    --attribute deleted_at:timestamp_utc_usec \
    --attribute deleted_by:text \
    --attribute locale_code:string \
    --attribute name:string \
    --attribute url:text \
    --attribute description:string \
    --attribute level_1_description_as_markdown:markdown \
    --attribute level_1_description_as_html:html \
    --attribute level_2_description_as_markdown:markdown \
    --attribute level_2_description_as_html:html \
    --attribute level_3_description_as_markdown:html \
    --attribute level_3_description_as_html:html \
    --attribute level_4_description_as_markdown:html \
    --attribute level_4_description_as_html:html \
    --attribute roles_that_require_this_skill_as_markdown:html \
    --attribute roles_that_require_this_skill_as_html:html \

mix ash.codegen create_united_kingdom_government_digital_and_data_profession_capability_framework_skill
mix ash.migrate

### Extra ###
#
# Edit file lib/my_app/my_domain/united_kingdom_government_digital_and_data_profession_capability_framework_skill.ex
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
