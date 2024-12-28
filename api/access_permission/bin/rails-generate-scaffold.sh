#!/bin/sh
set -euf

cargo loco generate scaffold \
    access_permission \
        access_attribute_it:referencesNone \
        access_operation_id:referencesNone \
    --force \
    --no-timestamps \

