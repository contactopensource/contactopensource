#!/bin/sh
set -euf

cargo loco generate scaffold \
    access_permission \
        access_attribute_it:access_attribute.idNone \
        access_operation_id:access_operation.idNone \
    --force \
    --no-timestamps \

