#!/bin/sh
set -euf

mix phx.gen.html \
    Access AccessPermission None \
        access_attribute_it:access_attribute.idNone \
        access_operation_id:access_operation.idNone \
    --force \
    --no-timestamps \

