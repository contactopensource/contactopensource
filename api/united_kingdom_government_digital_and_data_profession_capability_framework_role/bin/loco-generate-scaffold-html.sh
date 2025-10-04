#!/bin/sh
set -euf

cargo loco generate scaffold --html \
    united_kingdom_government_digital_and_data_profession_capability_framework_role \
        id:uuid \
        lock_version:integer \
        created_at:timestamp_utc_usec \
        created_by:url \
        updated_at:timestamp_utc_usec \
        updated_by:url \
        deleted_at:timestamp_utc_usec \
        deleted_by:url \
        locale_code:string \
        family_id:references:united_kingdom_government_digital_and_data_profession_capability_framework_role_family \
        name:string \
        url:url \
        description_as_markdown:markdown \
        level_name:string \
        level_description_as_markdown:markdown \
        senior_civil_service_flag:boolean \

