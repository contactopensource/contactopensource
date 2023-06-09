#!/bin/sh
set -euf

rails generate scaffold \
pantone_color \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    key:string:index \
    name:string:index \
    code:"string{3}":index \
    stock:"string{1}":index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
