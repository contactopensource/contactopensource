#!/bin/sh
set -euf

rails generate scaffold organization \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \

rails generate scaffold organization_locale \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    organization:references \
    locale:references \
    name:string:index \
    summary:string \
    description:text \
