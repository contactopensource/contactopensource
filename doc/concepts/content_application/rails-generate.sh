#!/bin/sh
set -euf

rails generate scaffold content_application \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    name:string:index \
