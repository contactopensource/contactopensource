#!/bin/sh
set -euf

rails generate scaffold \
access_operation \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    key:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

rails generate scaffold \
access_operation_locale \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    access_operation:references:index \
    locale:references:index \
    name:string:index \
    summary:string \
    description:text \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
