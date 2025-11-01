#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    access_permission \
        access_attribute_id:references \
        access_operation_id:references \

