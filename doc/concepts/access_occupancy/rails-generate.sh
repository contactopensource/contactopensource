#!/bin/sh
set -euf

rails generate scaffold \
access_occupancy \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    access_tenant:references:index \
    access_agent:references:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
