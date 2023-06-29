#!/bin/sh
set -euf

degrees="decimal{15,10}"
meters="integer"

rails generate scaffold \
geo_point \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    latitude:"$degrees":index \
    longitude:"$degrees":index \
    altitude_msl:"$meters":index \
    altitude_agl:"$meters":index \
    elevation_msl:"$meters":index \
    elevation_agl:"$meters":index \
    spread_as_meters:"$meters":index
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

rails generate scaffold \
geo_point_locale \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    geo_point:references:index \
    locale:references:index \
    name:string:index \
    summary:string \
    description:text \
    disambiguation:text \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
