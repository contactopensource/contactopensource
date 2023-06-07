#!/bin/sh
set -euf

rails generate scaffold media_type \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    code:string:index \
    supertype:string \
    subtype:string \
    tree:string \
    suffix :string \
    parameters:string[] \
