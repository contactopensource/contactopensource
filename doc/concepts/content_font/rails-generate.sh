#!/bin/sh
set -euf

rails generate scaffold \
content_font \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    name:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
