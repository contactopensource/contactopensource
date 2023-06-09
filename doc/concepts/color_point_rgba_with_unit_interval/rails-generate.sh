#!/bin/sh
set -euf

rails generate scaffold \
color_point_rgb_with_unit_interval \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    red:float \
    green:float \
    blue:float \
    alpha:float \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

@enduml
