#!/bin/sh
set -euf

rails generate scaffold \
system_group \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    gid:integer \
    name:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
