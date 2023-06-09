#!/bin/sh
set -euf

rails generate scaffold \
access_assignment \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    access_agent:references:index \
    access_attribute:references:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
