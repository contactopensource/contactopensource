#!/bin/sh
set -euf

rails generate scaffold \
access_agent \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    key:string:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

rails generate scaffold \
access_agent_locale \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    access_agent:references:index \
    locale:references:index \
    name:string:index \
    summary:string \
    description:text \
    disambiguation:text \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
