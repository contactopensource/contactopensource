#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.SoftwarePackageDataExchangeLicense \
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
    --attribute code:string \

mix ash.codegen create_software_package_data_exchange_licenses
mix ash.migrate

touch priv/repo/migrations/00000000000000_create_software_package_data_exchange_licenses.exs

mkdir -p lib/my_app_web/live/software_package_data_exchange_licenses
touch lib/my_app_web/live/software_package_data_exchange_licenses/form_live.ex
touch lib/my_app_web/live/software_package_data_exchange_licenses/index_live.ex
touch lib/my_app_web/live/software_package_data_exchange_licenses/show_live.ex

mkdir -p test/my_app_web/live/software_package_data_exchange_licenses
touch test/my_app_web/live/software_package_data_exchange_licenses/form_live.ex
touch test/my_app_web/live/software_package_data_exchange_licenses/index_live.ex
touch test/my_app_web/live/software_package_data_exchange_licenses/show_live.ex

cat << EOF
Edit file lib/my_app_web/router.ex to add live routes:
live "/software_package_data_exchange_licenses", SoftwarePackageDataExchangeLicenses.IndexLive
live "/software_package_data_exchange_licenses/new", SoftwarePackageDataExchangeLicenses.FormLive, :new
live "/software_package_data_exchange_licenses/:id", SoftwarePackageDataExchangeLicenses.ShowLive
live "/software_package_data_exchange_licenses/:id/edit", SoftwarePackageDataExchangeLicenses.FormLive, :edit
EOF
### Extra ###
#
# Edit file lib/my_app/my_domain/software_package_data_exchange_license.ex
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
