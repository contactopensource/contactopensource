#!/bin/sh
set -euf

rails generate scaffold \
    united_kingdom_government_digital_and_data_profession_capability_framework_role_family \
        sign:string:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        title:string \
    --force \
    --no-timestamps \

