#!/bin/sh
set -euf

rails generate scaffold \
notification \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    key:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

rails generate scaffold \
notification_locale \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    notification:references:index \
    locale:references:index \
    name:string:index \
    summary:string \
    description:text \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
