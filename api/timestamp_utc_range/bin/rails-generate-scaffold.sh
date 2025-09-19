#!/bin/sh
set -euf

rails generate scaffold \
    tag \
        start:timestamp_utc \
        stop:timestamp_utc \
        duration_as_seconds:count \
    --force \
    --no-timestamps \

