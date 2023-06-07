#!/bin/sh
set -euf

rails generate scaffold access_permission \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    access_attribute:references:index \
    access_operation:references:index \
