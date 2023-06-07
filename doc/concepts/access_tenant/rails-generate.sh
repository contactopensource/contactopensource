#!/bin/sh
set -euf

rails generate scaffold access_tenant \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \

rails generate scaffold access_tenant_locale \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    access_tenant:references \
    locale:references \
    name:string:index \
    summary:string \
    description:text \
