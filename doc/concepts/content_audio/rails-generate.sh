#!/bin/sh
set -euf

rails generate scaffold content_audio \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    name:string:index \
    codec_id : references \
    duration_as_seconds : integer \
