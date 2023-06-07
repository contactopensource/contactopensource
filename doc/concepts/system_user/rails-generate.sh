#!/bin/sh
set -euf

rails generate scaffold system_user \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    uid:integer \
    name:string:index \
