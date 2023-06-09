#!/bin/sh
set -euf

rails generate scaffold \
content_image \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    name:string:index \
    codec_id:references:index \
    width_as_pixels:integer \
    height_as_pixels:integer \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
