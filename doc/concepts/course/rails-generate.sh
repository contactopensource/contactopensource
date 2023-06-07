#!/bin/sh
set -euf

rails generate scaffold course \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \

rails generate scaffold course_locale \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    course:references \
    locale:references \
    name:string:index \
    summary:string \
    description:text \
