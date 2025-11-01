#!/bin/sh
set -euf

mix phx.gen.html \
    Access AccessPermission None \
        access_attribute_id:referencesNone \
        access_operation_id:referencesNone \
    --force \
    --no-timestamps \

