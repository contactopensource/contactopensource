#!/bin/sh
set -euf

rails generate scaffold system_group \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    iid:integer \
    path:text:index \
