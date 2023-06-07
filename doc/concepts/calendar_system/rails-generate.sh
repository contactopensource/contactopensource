#!/bin/sh
set -euf

rails generate scaffold calendar_system \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \
