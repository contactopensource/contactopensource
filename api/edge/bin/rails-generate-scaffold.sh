#!/bin/sh
set -euf

rails generate scaffold \
    edge \
        lock_version:integer \
        created_at:timestamp \
        created_by:text \
        updated_at:timestamp \
        updated_by:text \
        retired_at:timestamp \
        retired_by:text \
        locale_id:references \
        title:"string{50}":index \
        subtitle:"string{50}":index \
        summary:string \
        description:text \
        disambiguation:text \
        image_1080x1080_url:text \
        image_1080x1080_alt:text \
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
    --force \
    --no-timestamps \

