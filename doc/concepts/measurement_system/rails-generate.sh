#!/bin/sh
set -euf

rails generate scaffold measurement_system \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \
