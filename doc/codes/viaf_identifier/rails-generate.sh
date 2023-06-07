#!/bin/sh
set -euf

rails generate scaffold viaf_identifier \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    identifier:string:index \
