#!/bin/sh
set -euf

rails generate scaffold system_group \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    gid:integer \
    name:string:index \
