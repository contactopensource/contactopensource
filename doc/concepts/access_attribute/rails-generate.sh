#!/bin/sh
set -euf

rails generate scaffold access_attribute \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \

rails generate scaffold access_attribute_locale \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    access_attribute:references \
    locale:references \
    name:string:index \
    summary:string \
    description:text \
