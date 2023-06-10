#!/bin/sh
set -euf

rails generate scaffold \
credential \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    name:string:index \
    code:string:index \
    symbol:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
