#!/bin/sh
set -euf

rails generate scaffold system_env \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \
    value:text \
