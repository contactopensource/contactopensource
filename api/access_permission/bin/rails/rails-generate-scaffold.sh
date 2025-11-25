#!/bin/sh
set -euf

rails generate scaffold \
    access_permission \
        access_attribute_id:references \
        access_operation_id:references \
    --force \
    --no-timestamps \

