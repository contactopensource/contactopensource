#!/bin/sh
set -euf

unit_interval="float"

rails generate scaffold \
color_point_cymk_with_unit_interval \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    cyan:"$unit_interval" \
    yellow:"$unit_interval" \
    magenta:"$unit_interval" \
    black:"$unit_interval" \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
