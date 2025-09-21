#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Code.None \
    --conflicts replace \
    --default-actions create,read,update,destroy \
    --extend postgres \
    --uuid-primary-key id \
    --attribute sign:char \
    --attribute lock_version:integer \
    --attribute created_at:timestamp_utc_usec \
    --attribute created_by:url \
    --attribute updated_at:timestamp_utc_usec \
    --attribute updated_by:url \
    --attribute retired_at:timestamp_utc_usec \
    --attribute retired_by:url \
    --attribute locale_id:locale.id \
    --attribute code:string \
    --attribute image_url:url \
    --attribute image_alt:text \

mix ash.codegen create_quick_response_code
mix ash.migrate
