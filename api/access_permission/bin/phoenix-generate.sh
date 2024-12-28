#!/bin/sh
set -euf

mix phx.gen.html \
    Access Permission access_permissions \
        access_attribute_it:referencesNone \
        access_operation_id:referencesNone \
    --force \
    --no-timestamps \

