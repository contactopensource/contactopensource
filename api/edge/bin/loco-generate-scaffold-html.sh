#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    edge \
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
        title:"string{50}" \
        subtitle:"string{50}" \
        summary:string \
        description:text \
        disambiguation:text \
        image_1024x1024_url:url \
        image_1024x1024_alt:text \
        emoji:text \
        star_count:integer \
        subject_uri:text \
        subject_database:text \
        subject_schema:text \
        subject_table:text \
        subject_id:id \
        predicate_uri:text \
        predicate_database:text \
        predicate_schema:text \
        predicate_table:text \
        predicate_id:id \
        object_uri:text \
        object_database:text \
        object_schema:text \
        object_table:text \
        object_id:id \
        start_at_timestamp_utc:timestamp \
        stop_at_timestamp_utc:timestamp \
        count:integer \
        unit_interval:unit_interval \
        dual_interval:dual_interval \

