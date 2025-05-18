#!/bin/sh
set -euf

rails generate scaffold \
    access_permission \
        access_attribute_it:references \
        access_operation_id:references \
    --force \
    --no-timestamps \

