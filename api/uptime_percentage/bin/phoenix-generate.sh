#!/bin/sh
set -euf

mix phx.gen.html \
    None UptimePercentage None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        deleted_at:timestamp_utc_usec:index \
        deleted_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        actual:numeric(7,2):index \
        target:numeric(7,2):index \
        ratio:numeric(7,2):index \
        unit:stringNone \
        description:stringNone \
    --force \
    --no-timestamps \

