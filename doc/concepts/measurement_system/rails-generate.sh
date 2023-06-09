#!/bin/sh
set -euf

rails generate scaffold \
measurement_system \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    key:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
