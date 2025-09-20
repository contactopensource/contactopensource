#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.status.Status System \
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
    --attribute key:string \
    --attribute formal_name:string \

mix ash.codegen create_status_system
mix ash.migrate
