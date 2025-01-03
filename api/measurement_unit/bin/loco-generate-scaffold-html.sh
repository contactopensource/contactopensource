#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    measurement_unit \
        id:bigint \
        zid:uuid \
        lock_version:int \
        created_at:timestamp \
        created_by:url \
        updated_at:timestamp \
        updated_by:url \
        retired_at:timestamp \
        retired_by:url \
        locale_id:references \
        name:text \
        symbol:text \
        measurement_system_id:references \

