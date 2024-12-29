#!/bin/sh
set -euf

cargo loco generate scaffold \
    pantone_process_color \
        id:bigint:index \
        zid:uuid:index \
        lock_version:intNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        key:string+None \
        name:string+None \
        code:"string{3}"None \
        stock:"string{1}"None \
    --force \
    --no-timestamps \

