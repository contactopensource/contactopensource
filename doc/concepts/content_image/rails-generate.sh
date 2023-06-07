#!/bin/sh
set -euf

rails generate scaffold content_image \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    name:string:index \
    codec_id:references \
    width_as_pixels:integer \
    height_as_pixels:integer \
