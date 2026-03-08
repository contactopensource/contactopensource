#!/bin/sh
set -euf

mix phx.gen.html \
    None Renderee None \
        id:uuid:index \
        lock_version:integerNone \
        created_at:timestamp_utc_usec:index \
        created_by:url:index \
        updated_at:timestamp_utc_usec:index \
        updated_by:url:index \
        retired_at:timestamp_utc_usec:index \
        retired_by:url:index \
        locale_code:string:index \
        tagging:string:index \
        renderer_id:referencesNone \
        input_media_type_id:referencesNone \
        input_as_json:textNone \
        input_as_text:textNone \
        input_as_url:textNone \
        output_media_type_id:referencesNone \
        output_as_json:textNone \
        output_as_text:urlNone \
        output_as_url:urlNone \
    --force \
    --no-timestamps \

