#!/bin/sh
set -euf

rails generate scaffold \
color_point_cymka_with_float \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    cyan:float \
    yellow:float \
    magenta:float \
    black:float \
    alpha:float \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
