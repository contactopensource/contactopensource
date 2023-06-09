#!/bin/sh
set -euf

rails generate scaffold \
html_color_code_name \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    code:"string{6}":index \
    name:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
