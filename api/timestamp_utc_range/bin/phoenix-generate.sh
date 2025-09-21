#!/bin/sh
set -euf

mix phx.gen.html \
    Basics Timestamp UTC Range None \
        start:timestamp_utc_usec_utcNone \
        stop:timestamp_utc_usec_utcNone \
        duration_as_seconds:countNone \
    --force \
    --no-timestamps \

