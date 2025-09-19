#!/bin/sh
set -euf

mix ash.gen.resource \
    MyApp.Color.ColorNameKit \
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
    --attribute hex:hexdigit \
    --attribute html_color_name:text \
    --attribute x11_color_name:text \
    --attribute color_naming_system_name:text \
    --attribute pantone_process_color_name:text \

