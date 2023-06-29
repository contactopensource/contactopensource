#!/bin/sh
set -euf

unit_interval="float"

rails generate scaffold \
color_point_rgb_with_unit_interval \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    red:"$unit_interval" \
    green:"$unit_interval" \
    blue:"$unit_interval" \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

@enduml
