#!/bin/sh
set -euf

mix phx.gen.html \
    Access Permission access_permissions \
        access_attribute_it:access_attribute.idNone \
        access_operation_id:access_operation.idNone \
    --force \
    --no-timestamps \

