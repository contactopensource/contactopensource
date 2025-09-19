#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.ColorPointRGBWithUnitInterval \
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
    --attribute red:unit_interval \
    --attribute green:unit_interval \
    --attribute blue:unit_interval \

