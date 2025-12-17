#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    tag \
        start:timestamp_utc_usec_utc \
        stop:timestamp_utc_usec_utc \
        duration_as_seconds:count \

