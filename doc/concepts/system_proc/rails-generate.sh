#!/bin/sh
set -euf

rails generate scaffold 
system_proc \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    pid:integer \
    name:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
