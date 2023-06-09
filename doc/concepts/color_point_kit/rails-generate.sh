#!/bin/sh
set -euf

rails generate scaffold \
color_point_kit \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    color_point_id:references \
    hex:string:index \
    html_color_name:string:index \
    x11_color_name:string:index \
    color_naming_system_name:string:index \
    pantone_matching_system_name:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
