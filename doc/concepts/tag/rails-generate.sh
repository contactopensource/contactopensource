#!/bin/sh
set -euf

rails generate scaffold \
tag \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    key:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

rails generate scaffold \
tag_locale \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    tag:references:index \
    locale:references:index \
    name:string:index \
    summary:string \
    description:text \
    disambiguation:text \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
