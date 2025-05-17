#!/bin/sh
set -euf

rails generate scaffold \
    software_package_data_exchange_license \
        id:uuid:index \
        lock_version:intNone \
        created_at:timestampNone \
        created_by:urlNone \
        updated_at:timestampNone \
        updated_by:urlNone \
        retired_at:timestampNone \
        retired_by:urlNone \
        locale_id:locale.idNone \
        code:string:index \
    --force \
    --no-timestamps \

