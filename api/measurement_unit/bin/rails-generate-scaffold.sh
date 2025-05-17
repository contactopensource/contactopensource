#!/bin/sh
set -euf

rails generate scaffold \
    measurement_unit \
        id:uuid:index \
        lock_version:intNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        name:textNone \
        symbol:textNone \
        measurement_system_id:measurement_system.idNone \
    --force \
    --no-timestamps \

