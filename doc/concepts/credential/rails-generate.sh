#!/bin/sh
set -euf

rails generate scaffold credential \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \

rails generate scaffold credential_locale \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    credential:references \
    locale:references \
    name:string:index \
    summary:string \
    description:text \
