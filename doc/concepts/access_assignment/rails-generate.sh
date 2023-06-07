#!/bin/sh
set -euf

rails generate scaffold access_assignment \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    access_agent:references:index \
    access_attribute:references:index \
