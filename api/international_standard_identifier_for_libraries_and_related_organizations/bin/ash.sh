#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Code.InternationalStandardIdentifierForLibrariesAndRelatedOrganization \
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
    --attribute subname:string \
    --attribute summary:string \
    --attribute description:text \
    --attribute disambiguation:text \
    --attribute sign:string \
    --attribute kind:string \
    --attribute avatar_image_400x400_url:text \
    --attribute avatar_image_400x400_alt:text \
    --attribute main_image_1080x1080_url:text \
    --attribute main_image_1080x1080_alt:text \
    --attribute main_image_1920x1080_url:text \
    --attribute main_image_1920x1080_alt:text \
    --attribute main_image_1080x1920_url:text \
    --attribute main_image_1080x1920_alt:text \
    --attribute emoji:text \
    --attribute star_count:integer \
    --relationship belongs_to:quick_response_code_id:MyApp.MyDomain.MyModel \
    --relationship belongs_to:universal_product_code_id:MyApp.MyDomain.MyModel \
    --attribute key:varchar \
    --attribute prefix:varchar \
    --attribute suffix:varchar \

mix ash.codegen create_international_standard_identifier_for_libraries_and_related_organizations
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_international_standard_identifier_for_libraries_and_related_organizations.exs

mkdir -p lib/my_app_web/live/international_standard_identifier_for_libraries_and_related_organizations
touch lib/my_app_web/live/international_standard_identifier_for_libraries_and_related_organizations/form_live.ex
touch lib/my_app_web/live/international_standard_identifier_for_libraries_and_related_organizations/index_live.ex
touch lib/my_app_web/live/international_standard_identifier_for_libraries_and_related_organizations/show_live.ex

mkdir -p test/my_app_web/live/international_standard_identifier_for_libraries_and_related_organizations
touch test/my_app_web/live/international_standard_identifier_for_libraries_and_related_organizations/form_live.ex
touch test/my_app_web/live/international_standard_identifier_for_libraries_and_related_organizations/index_live.ex
touch test/my_app_web/live/international_standard_identifier_for_libraries_and_related_organizations/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/international_standard_identifier_for_libraries_and_related_organizations", InternationalStandardIdentifierForLibrariesAndRelatedOrganizations.IndexLive
live "/international_standard_identifier_for_libraries_and_related_organizations/new", InternationalStandardIdentifierForLibrariesAndRelatedOrganizations.FormLive, :new
live "/international_standard_identifier_for_libraries_and_related_organizations/:id", InternationalStandardIdentifierForLibrariesAndRelatedOrganizations.ShowLive
live "/international_standard_identifier_for_libraries_and_related_organizations/:id/edit", InternationalStandardIdentifierForLibrariesAndRelatedOrganizations.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/code/international_standard_identifier_for_libraries_and_related_organization.ex
#
# Find this section:
#
#   postgres do
#     table …
#     repo …
#
# Add this:
#
#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#     index[:{attribute.id}]#
#
# Change the attributes created_at and updated_at to:
#
#   create_timestamp :created_at
#   update_timestamp :updated_at
