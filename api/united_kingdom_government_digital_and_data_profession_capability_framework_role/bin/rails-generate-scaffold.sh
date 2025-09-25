#!/bin/sh
set -euf

rails generate scaffold \
    united_kingdom_government_digital_and_data_profession_capability_framework_role \
        sign:string:index \
        lock_version:integer \
        created_at:timestamp:index \
        created_by:text:index \
        updated_at:timestamp:index \
        updated_by:text:index \
        deleted_at:timestamp:index \
        deleted_by:text:index \
        locale_id:references:index \
        family_id:references \
        name:string \
        url:text \
        description:string \
        level_name:string \
        level_description:string \
        senior_civil_service_flag:boolean \
    --force \
    --no-timestamps \

