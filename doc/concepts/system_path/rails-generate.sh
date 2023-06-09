#!/bin/sh
set -euf

rails generate scaffold \
system_group \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    iid:integer \
    path:text:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
