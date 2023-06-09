#!/bin/sh
set -euf

rails generate scaffold \
system_user \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    uid:integer \
    name:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
