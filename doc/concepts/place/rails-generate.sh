#!/bin/sh
set -euf

rails generate scaffold \
place \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    key:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

rails generate scaffold \
place_locale \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    place:references:index \
    locale:references:index \
    name:string:index \
    summary:string \
    description:text \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
