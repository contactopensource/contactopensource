#!/bin/sh
set -euf

rails generate scaffold \
color_point_cymk_with_byte \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    cyan:byte \
    yellow:byte \
    magenta:byte \
    black:byte \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
