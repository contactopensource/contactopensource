#!/bin/sh
set -euf

rails generate scaffold system_proc \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    pid:integer \
    name:string:index \
