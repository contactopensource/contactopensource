#!/bin/sh
set -euf

rails generate scaffold \
edge \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    latitude:"decimal{15,10}":index \
    longitude:"decimal{15,10}":index \
    altitude_msl:integer:index \
    altitude_agl:meters:index \
    elevation_msl:integer:index \
    elevation_agl:integer:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
