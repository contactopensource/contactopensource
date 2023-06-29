#!/bin/sh
set -euf

rails generate scaffold \
color_point_rgb_with_byte \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    red:byte \
    green:byte \
    blue:byte \
    alpha:byte \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
