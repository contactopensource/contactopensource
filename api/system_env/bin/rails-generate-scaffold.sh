#!/bin/sh
set -euf

rails generate scaffold \
    system_env \
        id:uuid:index \
        lock_version:intNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        key:string:index \
        value:textNone \
    --force \
    --no-timestamps \

