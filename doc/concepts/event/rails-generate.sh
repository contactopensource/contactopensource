#!/bin/sh
set -euf

rails generate scaffold event \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    key:string:index \
    start_timestamp_utc:timestampLindex \
    stop_timestamp_utc:timestamp:index \
    duration_as_seconds:integer:index \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER

rails generate scaffold event_locale \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE \
    event:references:index \
    locale:references:index \
    name:string:index \
    summary:string \
    description:text \
    $RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER
