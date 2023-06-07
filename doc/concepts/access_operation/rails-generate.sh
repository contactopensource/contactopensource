#!/bin/sh
set -euf

rails generate scaffold access_operation \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \

rails generate scaffold access_operation_locale \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    access_operation:references \
    locale:references \
    name:string:index \
    summary:string \
    description:text \
