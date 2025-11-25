#!/bin/sh
set -euf

rails generate scaffold \
    tag \
        start:timestamp_utc_usec_utc \
        stop:timestamp_utc_usec_utc \
        duration_as_seconds:count \
    --force \
    --no-timestamps \

