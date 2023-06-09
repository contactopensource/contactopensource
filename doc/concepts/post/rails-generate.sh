#!/bin/sh
set -euf

rails generate scaffold \
post \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    key:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

rails generate scaffold \
post_locale \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    post:references:index \
    locale:references:index \
    name:string:index \
    summary:string \
    description:text \
    disambiguation:text \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
