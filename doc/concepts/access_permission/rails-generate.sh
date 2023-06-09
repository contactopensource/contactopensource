#!/bin/sh
set -euf

rails generate scaffold \
access_permission \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    access_attribute:references:index \
    access_operation:references:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
