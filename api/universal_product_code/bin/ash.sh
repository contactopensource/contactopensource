#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Code.UniversalProductCode \
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
    --attribute image_url:url \
    --attribute image_alt:text \

mix ash.codegen create_universal_product_code
mix ash.migrate
