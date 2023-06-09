#!/bin/sh
set -euf

rails generate scaffold \
content_audio \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    name:string:index \
    codec_id : references \
    duration_as_seconds : integer \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
