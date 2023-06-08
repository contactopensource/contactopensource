#!/bin/sh
set -euf

rails generate scaffold event \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    key:string:index \
    start_timestamp_utc:timestampLindex \
    stop_timestamp_utc:timestamp:index \
    duration_as_seconds:integer:index \

rails generate scaffold event_locale \
    "$RAILS_GENERATE_SCAFFOLD_FIELDS" \
    event:references \
    locale:references \
    name:string:index \
    summary:string \
    description:text \
