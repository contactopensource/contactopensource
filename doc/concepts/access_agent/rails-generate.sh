#!/bin/sh
set -euf

rails generate scaffold access_agent \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \

rails generate scaffold access_agent_locale \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    access_agent:references \
    locale:references \
    name:string:index \
    summary:string \
    description:text \
