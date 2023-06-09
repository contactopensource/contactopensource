#!/bin/sh
set -euf

rails generate scaffold \
system_env \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    key:string:index \
    value:text \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
