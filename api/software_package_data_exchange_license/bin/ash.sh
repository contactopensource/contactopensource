#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.None.SoftwarePackageDataExchangeLicense \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute lock_version:integer \
    --attribute created_at:timestamp \
    --attribute created_by:url \
    --attribute updated_at:timestamp \
    --attribute updated_by:url \
    --attribute retired_at:timestamp \
    --attribute retired_by:url \
    --attribute locale_id:locale.id \
    --attribute code:string \

mix ash.codegen create_software_package_data_exchange_license
mix ash.migrate
