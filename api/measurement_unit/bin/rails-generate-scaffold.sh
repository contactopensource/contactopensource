#!/bin/sh
set -euf

cargo loco generate scaffold \
    measurement_unit \
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
        name:textNone \
        symbol:textNone \
        measurement_system_id:measurement_system.idNone \
    --force \
    --no-timestamps \

