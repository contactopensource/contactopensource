#!/bin/sh
set -euf

mix phx.gen.html \
    None NetPromoterScoreWorkerPerspective None \
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
        actual:numeric(7,2)None \
        expect:numeric(7,2)None \
        ratio:numeric(7,2)None \
        unit:textNone \
        description_as_markdown:textNone \
    --force \
    --no-timestamps \

